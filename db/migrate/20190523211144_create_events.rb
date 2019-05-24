class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.integer :cost
      t.date :date
      t.integer :trip_id

      t.timestamps
    end
  end
end
