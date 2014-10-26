class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :dob
      t.string :interest
      t.string :friends
      t.references :collection_name, index: true
      t.references :shop_product, index: true
      t.integer :user_id

      t.timestamps
    end
  end
end
