module BoxScaffold
  
  def self.included(base)
    base.extend(ClassMethods)
    base.module_eval do
      # TODO: these should be in actions/core
      before_filter :handle_user_settings
    end
  end

  def box_scaffold_config
    self.class.box_scaffold_config
  end

  module ClassMethods
    def box_scaffold(model_id = nil, &block)
      @box_scaffold_config = BoxScaffold::Config::Core.new(model_id || self.to_s.split('::').last.sub(/Controller$/, '').pluralize.singularize.underscore)


      module_eval do

        include BoxScaffold::Actions::Core

        box_scaffold_config.actions.each do |mod|
          name = mod.to_s.camelize
          include "BoxScaffold::Actions::#{name}".constantize

          # sneak the action links from the actions into the main set
          if link = box_scaffold_config.send(mod).link rescue nil
            box_scaffold_config.action_links << link
          end
        end
      end

    end

    def box_scaffold_config
      if @box_scaffold_config.nil?
        self.superclass.box_scaffold_config if self.superclass.respond_to? :box_scaffold_config
      else
        @box_scaffold_config
      end



    end
  end
  
end
