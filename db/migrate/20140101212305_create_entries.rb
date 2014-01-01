class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title, null: false
      t.text :description
      t.integer :quantity, null: false

      t.timestamps
    end
  end
end
