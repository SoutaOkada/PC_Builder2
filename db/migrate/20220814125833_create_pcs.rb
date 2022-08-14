class CreatePcs < ActiveRecord::Migration[6.1]
  def change
    create_table :pcs do |t|
      t.string :cpu
      t.integer :cpu_price
      t.string :cpu_cooler
      t.integer :cpu_cooler_price
      t.string :memory
      t.integer :memory_price
      t.string :videocard
      t.integer :videocard_price
      t.string :storage
      t.integer :storage_price
      t.string :drive
      t.integer :drive_price
      t.string :case
      t.integer :case_price
      t.string :motherboard
      t.integer :motherboard_price
      t.string :power
      t.integer :power_price
      t.string :system
      t.integer :system_price
      t.string :fan
      t.integer :fan_price
      t.string :other
      t.integer :other_price

      t.timestamps
    end
  end
end
