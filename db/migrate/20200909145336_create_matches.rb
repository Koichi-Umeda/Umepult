class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.text :Ateam
      t.text :Bteam
      t.integer :Aper
      t.integer :Bper

      t.timestamps
    end
  end
end
