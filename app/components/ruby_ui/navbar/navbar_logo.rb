# frozen_string_literal: true

module RubyUI
  class NavbarLogo < Base
    def view_template(&)
      a(**attrs, &)
    end

    private

    def default_attrs
      {
        class: ""
      }
    end
  end
end
