class AddScheduleToCompany < ActiveRecord::Migration
  def change
    add_reference :companies, :schedule, index: true
  end
end
