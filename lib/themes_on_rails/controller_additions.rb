module ThemesOnRails
  module ControllerAdditions
    extend ActiveSupport::Concern

    module ClassMethods
      def theme(theme, options={})
        return unless theme.present?
        @_theme         = theme
        @_theme_options = options
        ThemesOnRails::ActionController.apply_theme(self, theme, options)
      end
    end
  end
end