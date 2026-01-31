# frozen_string_literal: true

module RubyUI
  class NavbarLink < Base
    def view_template(&)
      a(**attrs, &)
    end

    private

    def default_attrs
      {
        class: "text-sm font-medium transition-colors hover:text-primary"
      }
    end
  end
end
