# frozen_string_literal: true

module RubyUI
  class NavbarLinks < Base
    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        class: "flex gap-4"
      }
    end
  end
end
