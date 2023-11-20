# frozen_string_literal: true

ArchivesSpacePublic::Application.config.after_initialize do
  RequestsController
  class RequestsController < ApplicationController
    # send a request
    def make_request
      @request = RequestItem.new(params)
      errs = @request.validate
      errs << I18n.t('request.failed') if params['comment'].present?
      # PLUGIN: add verify recaptcha
      errs << I18n.t('request.recaptcha_unverified') unless verify_recaptcha

      if errs.blank?
        flash[:notice] = I18n.t('request.submitted')

        RequestMailer.request_received_staff_email(@request).deliver
        RequestMailer.request_received_email(@request).deliver

        redirect_to params.fetch('base_url', app_prefix(request[:request_uri]))
      else
        flash[:error] = errs
        redirect_back(fallback_location: app_prefix(request[:request_uri])) and return
      end
    end
  end
end
