class AddUserToTimeSpent < ActiveRecord::Migration
  def change
    add_column :time_logs, :user_id, :integer
  end
end
