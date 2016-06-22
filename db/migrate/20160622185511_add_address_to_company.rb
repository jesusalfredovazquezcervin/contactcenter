class AddAddressToCompany < ActiveRecord::Migration
  def change
    add_reference :companies, :address, index: true
  end
end
