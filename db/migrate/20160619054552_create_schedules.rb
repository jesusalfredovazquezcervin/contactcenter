class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.time :mondayStart
      t.time :mondayEnd
      t.time :tuesdayStart
      t.time :tuesdayEnd
      t.time :wednesdayStart
      t.time :wednesdayEnd
      t.time :thursdayStart
      t.time :thursdayEnd
      t.time :saturdayStart
      t.time :saturdayEnd
      t.time :sundayStart
      t.time :sundayEnd

      t.timestamps
    end
  end
end
