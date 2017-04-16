class RemoveZipFromHomes < ActiveRecord::Migration[5.0]
  def change
    remove_column :homes, :zip, :integer
  end
end
