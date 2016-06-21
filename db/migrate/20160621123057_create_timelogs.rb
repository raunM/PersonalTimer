class CreateTimelogs < ActiveRecord::Migration
  def change
    create_table :timelogs do |t|
      t.text :description
      t.text :category
      t.string :timespent

      t.timestamps
    end
  end
end
