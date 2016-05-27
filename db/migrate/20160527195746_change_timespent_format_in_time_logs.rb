class ChangeTimespentFormatInTimeLogs < ActiveRecord::Migration
  def up
    change_column :time_logs, :timespent, :string
  end

  def down
    change_column :time_logs, :timespent, :decimal
  end
end