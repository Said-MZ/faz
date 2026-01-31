class Views::Dashboard::Index < Views::Base
  def initialize(names)
    @names = %w[Sai'd John Jane]
  end

  def view_template
    div(class: "grid grid-cols-3 gap-6") do
      @names.each do |name|
        dashboardCard(name)
      end
    end
  end

  private

  def dashboardCard(name)
    render RubyUI::Card.new(class: "w-96") do
      render RubyUI::CardHeader.new do
        render RubyUI::CardTitle.new { "Welcome #{name}" }
        render RubyUI::CardDescription.new { "Kickstart your project today!" }
      end
      render RubyUI::CardContent.new do
        p(class: "text-sm text-muted-foreground") do
          "Build your Rails application with beautiful, reusable components."
        end
      end
      render RubyUI::CardFooter.new(class: "flex justify-end") do
        a(href: "#", class: "inline-flex items-center justify-center rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 border border-input bg-background hover:bg-accent hover:text-accent-foreground h-10 px-4 py-2") do
          "Get started"
        end
      end
    end
  end
end
