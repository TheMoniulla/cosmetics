class CreateCosmetics < ActiveRecord::Migration
  def change
    create_table :cosmetics do |t|
      t.string :name
      t.string :brand
      t.string :cosmetic_type
      t.integer :price
      t.date :expiration_date
      t.timestamps
    end
  end
end
