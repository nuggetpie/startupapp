class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :collection_name
      t.string :collection_category
      t.references :shop_name, index: true
      t.references :shop_product, index: true

      t.timestamps
    end
  end
end
