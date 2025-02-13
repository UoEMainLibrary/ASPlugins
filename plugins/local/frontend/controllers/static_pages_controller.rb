class StaticPagesController < ApplicationController

  set_access_control  "view_repository" => [:page]

  def page
    page_file = File.join(File.dirname(__FILE__), '..', 'pages', params[:page] + '.html')

    if File.exists?(page_file)
      @page = File.read(page_file)
    else
      @page = "Couldn't find static page file at: #{page_file}"
    end
  end
end
