class AddOriginToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :origin, :string
  end
end
