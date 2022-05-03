class CreateRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :records do |t|
      t.references :bird, null: false, foreign_key: true
      t.date :date
      t.decimal :meal_weight_g
      t.decimal :body_weight_g
      t.decimal :room_temperature_c
      t.integer :weather
      t.text :note

      t.timestamps
    end
  end
end
