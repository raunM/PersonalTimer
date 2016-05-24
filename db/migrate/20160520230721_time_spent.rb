class TimeSpent < ActiveRecord::Migration
  def change
    create_table :time_logs do |t|
      t.integer :user_id
      t.text :description
      t.decimal :timespent
      
      t.timestamps
    end
  end
end
