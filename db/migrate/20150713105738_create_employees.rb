class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :emp_id
      t.string :name
      t.string :email_id
      t.integer :mobile_no
      t.string :designation

      t.timestamps null: false
    end
  end
end
