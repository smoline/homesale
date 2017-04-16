class AddLotSizeToHomes < ActiveRecord::Migration[5.0]
  def change
    add_column :homes, :lot_size, :string
  end
end
