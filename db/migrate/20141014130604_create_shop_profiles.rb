class CreateShopProfiles < ActiveRecord::Migration
  def change
    create_table :shop_profiles do |t|
      t.string :shop_owner
      t.string :shop_name
      t.string :shop_product
      t.string :shop_category
      t.string :shop_keyword
      t.integer :shop_owner_id

      t.timestamps
    end
  end
end
