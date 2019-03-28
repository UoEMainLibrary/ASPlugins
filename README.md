ASPlugins
=========

Archives Space Plugins for University of Edinburgh

Before each upgrade, check to see if the left file has changed. If it has, recreate the plugin based on the new code and the changes from the commit history for the file on the right.

backend/app/model/ead_exporter.rb------------------>plugins/local/backend/model/ead_exporter.rb _
frontend/app/views/site/_branding.html.erb--------->plugins/local/frontend/views/site/_branding.html.erb
public/app/views/shared/_footer.html.erb----------->plugins/local/public/views/shared/_footer.html.erb
public/app/views/shared/_header.html.erb----------->plugins/local/public/views/shared/_header.html.erb
public/app/views/shared/_navigation.html.erb------->plugins/local/public/views/shared/_navigation.html.erb
public/app/views/shared/_record_innards.html.erb--->plugins/local/public/views/shared/_record_innards.html.erb
public/app/views/shared/_request_form.html.erb----->plugins/local/public/views/shared/_request_form.html.erb

The following files only have certain values overridden and cannot break code, unless there is a fundamental
change in variable naming.
public/config/locales/en.yml----------------------->plugins/local/public/locales/en.yml

The following files exist only in our instance and are called by changes to plugins above
plugins/local/public/views/shared/server.test.css
plugins/local/public/views/shared/_takedown.erb
plugins/local/public/views/layout_head.html.erb (this no longer seems to be in the core codebase, but we continue to call it)
plugins/local/public/views/site/_branding.html.erb
plugins/local/public/views/site/_header.html.erb
plugins/local/public/views/site/index.html.erb
plugins/local/public/plugin_init.rb
