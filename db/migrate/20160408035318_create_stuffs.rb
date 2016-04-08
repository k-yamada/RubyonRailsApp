class CreateStuffs < ActiveRecord::Migration
  def change
    create_table :stuffs do |t|
      t.string :title
      t.string :mail
      t.integer :tel
      t.integer :post
      t.text :address
      t.date :birthday
      t.references :project, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
