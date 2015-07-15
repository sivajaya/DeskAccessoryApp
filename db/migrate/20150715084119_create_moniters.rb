class CreateMoniters < ActiveRecord::Migration
  def change
    create_table :moniters do |t|
      t.string :screen

      t.timestamps null: false
    end
  end
end
