class ChangeDataTypeForEmployees < ActiveRecord::Migration
  def change
    remove_column :companies, :employees
    add_column  :companies, :employees, :integer
  end
end
