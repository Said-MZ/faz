class Views::Dashboard::Index < Views::Base
  def initialize(cards)
    @cards = cards
  end

  def view_template
    div(class: "grid grid-cols-3 gap-6 place-items-center") do
      @cards.each do |card|
        dashboardCard(card)
      end
    end
  end

  private

  def dashboardCard(card)
    div(
      class: "flip-card w-96 h-64",
      data: {
        controller: "card-flip",
        card_flip_target: "card"
      }
    ) do
      div(class: "flip-card-inner") do
        # Front side
        div(class: "flip-card-front") do
          render ::RubyUI::Card.new(class: "w-full h-full") do
            render ::RubyUI::CardHeader.new do
              render ::RubyUI::CardTitle.new { "Welcome #{card.name}" }
            end
            render ::RubyUI::CardContent.new do
              p(class: "text-sm text-muted-foreground") do
                card.front
              end
            end
            render ::RubyUI::CardFooter.new(class: "flex justify-end") do
              button(
                data: { action: "click->card-flip#toggle" },
                class: "inline-flex items-center justify-center rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 border border-input bg-background hover:bg-accent hover:text-accent-foreground h-10 px-4 py-2"
              ) { "Flip" }
            end
          end
        end

        # Back side
        div(class: "flip-card-back") do
          render ::RubyUI::Card.new(class: "w-full h-full bg-primary text-primary-foreground") do
            render ::RubyUI::CardHeader.new do
              render ::RubyUI::CardTitle.new { "#{card.name}'s Back" }
            end
            render ::RubyUI::CardContent.new(class: "flex-grow") do
              p(class: "text-sm") do
                card.back || "This is the back of the card"
              end
            end
            render ::RubyUI::CardFooter.new(class: "flex justify-end") do
              button(
                data: { action: "click->card-flip#toggle" },
                class: "inline-flex items-center justify-center rounded-md text-sm font-medium transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 border border-primary-foreground/20 bg-primary-foreground/10 hover:bg-primary-foreground/20 h-10 px-4 py-2"
              ) { "Flip Back" }
            end
          end
        end
      end
    end
  end
end
