
Dir["#{File.dirname __FILE__}/lib/*.rb"].each { |file| require file }

ActionController::Base.send(:include, BoxScaffold)
ActionView::Base.send(:include, BoxScaffold::Helpers::ViewHelpers)
