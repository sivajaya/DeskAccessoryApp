class CreateAccessaries < ActiveRecord::Migration
  def change
    create_table :accessaries do |t|
      t.integer :employee_id
      t.integer :moniter_id
      t.integer :system_id
      t.integer :items

      t.timestamps null: false
    end
  end
end
