module BoxScaffold
  module Helpers
    # All extra helpers that should be included in the View.
    # Also a dumping ground for uncategorized helpers.
    module ViewHelpers

      ##
      ## Delegates
      ##

      # access to the configuration variable
      def box_scaffold_config
        @controller.class.box_scaffold_config
      end

    end
  end
end
