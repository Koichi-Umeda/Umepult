class AddColorToMatch < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :Acolor, :string
    add_column :matches, :Bcolor, :string
  end
end
