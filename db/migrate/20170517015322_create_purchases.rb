class CreatePurchases < ActiveRecord::Migration[5.1]
  def change
    create_table :purchases do |t|
      t.integer :produce_id
      t.integer :user_id

      t.timestamps
    end
  end
end
