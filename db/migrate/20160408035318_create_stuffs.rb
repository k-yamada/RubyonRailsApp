class CreateStuffs < ActiveRecord::Migration
  def change
    create_table :stuffs do |t|
      t.string :title
      t.string :mail
      t.integer :tel
      t.text :post
      t.text :address
      t.date :birthday
      t.boolean :done, default: false
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
