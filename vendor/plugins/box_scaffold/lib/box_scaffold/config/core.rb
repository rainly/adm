module BoxScaffold::Config

  class Core

    cattr_accessor :actions

    self.actions = [:list]

    def initialize(model_id)
      @model_id = model_id.to_s
    end
    
    def clazz
      @clazz ||= @model_id.classify.constantize
    end
    
    def model_id
      @model_id
    end

    def model
      @model ||= @model_id.to_s.camelize.constantize
    end

     def links
       [
         {:label => 'show', :url => path_template(:show) },
         {:label => 'edit', :url => path_template(:edit) },
         {:label => 'destroy', :url => path_template(:destroy)}
       ]
     end

    def new_path
      @new_path ||= path_template(:new)
    end

    def path_template action
      {:action => action.to_s, :controller => @model_id.tableize}
    end

  end

end
