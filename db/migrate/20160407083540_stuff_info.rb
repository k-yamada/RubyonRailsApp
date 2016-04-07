class StuffInfo < ActiveRecord::Migration
  def change
    create_table :stuffs do |t|
      t.string :title
      t.string :mail
      t.integer :tel
      t.integer :post
      t.text :address
      t.integer :age

      t.timestamps null: false
    end
  end
end
