class AddCategoryIdToBrands < ActiveRecord::Migration
  def change
    change_table :brands do |t|
      t.references :category
    end
  end
end
