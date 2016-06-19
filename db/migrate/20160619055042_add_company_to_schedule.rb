class AddCompanyToSchedule < ActiveRecord::Migration
  def change
    add_reference :schedules, :company, index: true
  end
end
