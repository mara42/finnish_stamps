class CreateStamps < ActiveRecord::Migration[5.1]
  def change
    create_table :stamps do |t|
      t.string :tags
      t.date :release_date
      t.date :end_of_use 
      t.float :nominal_value
      t.string :name
      t.string :colour
      t.string :place_of_printing
      t.integer :amount_printed
      t.string :artist
      t.string :currency
      t.string :image_url

      t.timestamps
    end
  end
end
