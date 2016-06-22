class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :internal
      t.string :external
      t.string :suburb
      t.string :municipality
      t.string :location
      t.references :state, index: true
      t.string :postalCode
      t.string :city
      t.references :contact, index: true

      t.timestamps
    end
  end
end
