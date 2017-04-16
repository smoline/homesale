class RemoveCreatedByFromHomes < ActiveRecord::Migration[5.0]
  def change
    remove_column :homes, :created_by, :integer
  end
end
