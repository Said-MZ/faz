# frozen_string_literal: true

module RubyUI
  class Navbar < Base
    def view_template(&)
      aside(**attrs, &)
    end

    private

    def default_attrs
      {
        class: "w-screen border-r bg-background p-4 h-12 bg-emerald-500 absolute flex flex-row items-center gap-12"
      }
    end
  end
end
