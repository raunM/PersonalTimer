class AddUserIdToTimelogs < ActiveRecord::Migration
  def change
    add_column :timelogs, :user_id, :int
  end
end
