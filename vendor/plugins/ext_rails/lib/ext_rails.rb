%W[action_view].each do |mod|
  Dir[File.dirname(__FILE__) + "/#{mod}/*.rb"].each{|file|
    RAILS_DEFAULT_LOGGER.info "#{mod} is patched by ext_rails"
    require file
  }
end
