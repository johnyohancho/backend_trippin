class AddStartTimeToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :start_time, :time
    add_column :events, :end_time, :time
    add_column :events, :city, :string
    add_column :events, :venue, :string
  end
end
