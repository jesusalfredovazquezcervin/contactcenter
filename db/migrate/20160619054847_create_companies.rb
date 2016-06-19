class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :tradeName
      t.string :businessName
      t.string :rfc
      t.string :employees
      t.string :comercialBusiness
      t.string :sector
      t.references :schedule, index: true

      t.timestamps
    end
  end
end
