class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.string :logo
      t.boolean :visible
      t.references :category

      t.timestamps
    end
    add_index :brands, :category_id
  end
end
