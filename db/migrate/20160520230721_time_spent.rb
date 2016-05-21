class TimeSpent < ActiveRecord::Migration
  def change
    create_table :time_logs do |t|
      t.text :description
      t.decimal :timespent
      
      t.timestamps
    end
  end
end
