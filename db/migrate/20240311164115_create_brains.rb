class CreateBrains < ActiveRecord::Migration[7.1]
  def change
    create_table :brains do |t|
      t.string :specialty
      t.string :address
      t.string :photo
      t.string :title
      t.string :description
      t.string :wiki_page
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
