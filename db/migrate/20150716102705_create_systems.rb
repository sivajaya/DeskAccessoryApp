class CreateSystems < ActiveRecord::Migration
  def change
    create_table :systems do |t|
      t.string :name
      t.string :size
      t.boolean :is_laptop, default:"true"

      t.timestamps null: false
    end
  end
end
