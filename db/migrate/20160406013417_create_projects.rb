class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.integer :stuffnum, uniqueness: true

      t.timestamps null: false
    end
  end
end
