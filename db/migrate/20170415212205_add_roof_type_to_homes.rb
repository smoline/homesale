class AddRoofTypeToHomes < ActiveRecord::Migration[5.0]
  def change
    add_column :homes, :roof_type, :string
  end
end
