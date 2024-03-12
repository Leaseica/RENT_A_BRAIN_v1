class RemovePhotoFromBrains < ActiveRecord::Migration[7.1]
  def change
    remove_column :brains, :photo, :string
  end
end
