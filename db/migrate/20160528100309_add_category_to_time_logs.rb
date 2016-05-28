class AddCategoryToTimeLogs < ActiveRecord::Migration
  def change
    add_column :time_logs, :category, :string
  end
end
