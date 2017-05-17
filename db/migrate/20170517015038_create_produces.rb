class CreateProduces < ActiveRecord::Migration[5.1]
  def change
    create_table :produces do |t|
      t.integer :price
      t.string :name
      t.integer :farmer_id

      t.timestamps
    end
  end
end
