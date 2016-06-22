class RemoveContactFromAddress < ActiveRecord::Migration
  def change
    remove_reference :addresses, :contact, index: true
  end
end
