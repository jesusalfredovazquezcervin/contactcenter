class AddFridayToSchedule < ActiveRecord::Migration
  def change
    add_column :schedules, :fridayStart, :time
    add_column :schedules, :fridayEnd, :time
  end
end
