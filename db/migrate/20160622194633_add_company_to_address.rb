class AddCompanyToAddress < ActiveRecord::Migration
  def change
    add_reference :addresses, :company, index: true
  end
end
