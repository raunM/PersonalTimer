class AddUserToTimeSpent < ActiveRecord::Migration
  def change
    add_column :timelogs, :user_id, :integer
  end
end
