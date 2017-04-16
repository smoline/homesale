class AddZipToHomes < ActiveRecord::Migration[5.0]
  def change
    add_column :homes, :zip, :string
  end
end
