class AddCompanyToAddress < ActiveRecord::Migration
  def change
    add_reference :addresses, :address, index: true
  end
end
