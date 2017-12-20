class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.integer :category_id
      t.string :name
      t.string :text

      t.timestamps
    end
  end
end
