class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :text
      t.references :brand

      t.timestamps
    end
    add_index :tags, :brand_id
  end
end
