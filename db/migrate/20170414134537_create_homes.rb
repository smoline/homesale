class CreateHomes < ActiveRecord::Migration[5.0]
  def change
    create_table :homes do |t|
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :year_built
      t.integer :bedrooms
      t.float :bathrooms
      t.integer :square_footage
      t.integer :price
      t.string :description
      t.string :parking
      t.integer :lot_size
      t.boolean :hoa
      t.integer :hoa_fee
      t.integer :floors
      t.integer :created_by
      t.text :image_data

      t.timestamps
    end
  end
end
