class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :sex
      t.integer :age
      t.timestamp
    end
  end
end
