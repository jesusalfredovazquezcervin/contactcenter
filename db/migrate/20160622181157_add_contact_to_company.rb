class AddContactToCompany < ActiveRecord::Migration
  def change
    add_reference :companies, :contact, index: true
  end
end
