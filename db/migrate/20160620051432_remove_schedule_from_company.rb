class RemoveScheduleFromCompany < ActiveRecord::Migration
  def change
    remove_reference :companies, :schedule, index: true
  end
end
