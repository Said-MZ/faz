class Views::Dashboard::Index < Phlex::HTML
  def initialize(name)
    @name = name
  end

  def view_template
    render h1 { "Welcome to the Dashboard, #{@name}!" }
  end
end
