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
    
    def new_path
      @new_path ||= {:action => :new, :controller => @model_id.tableize}
    end

    def model_id
      @model_id
    end

    def model
      @model ||= @model_id.to_s.camelize.constantize
    end
  end

end
