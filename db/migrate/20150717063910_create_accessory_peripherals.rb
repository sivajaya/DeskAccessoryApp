class CreateAccessoryPeripherals < ActiveRecord::Migration
  def change
    create_table :accessory_peripherals do |t|
      t.references :accessary, index: true, foreign_key: true
      t.references :peripheral, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
