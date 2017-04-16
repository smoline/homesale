class RemoveLotSizeFromHomes < ActiveRecord::Migration[5.0]
  def change
    remove_column :homes, :lot_size, :integer
  end
end
