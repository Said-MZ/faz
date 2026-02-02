class AddFrontAndBackToCards < ActiveRecord::Migration[8.1]
  def change
    add_column :cards, :front, :text
    add_column :cards, :back, :text
  end
end
