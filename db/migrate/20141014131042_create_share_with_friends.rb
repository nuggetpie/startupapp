class CreateShareWithFriends < ActiveRecord::Migration
  def change
    create_table :share_with_friends do |t|
      t.references :friends, index: true
      t.references :collection_name, index: true
      t.references :shop_name, index: true
      t.references :shop_product, index: true

      t.timestamps
    end
  end
end
