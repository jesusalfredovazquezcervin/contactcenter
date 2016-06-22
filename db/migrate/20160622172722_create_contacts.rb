class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :position
      t.string :telephone
      t.string :cellphone
      t.string :email

      t.timestamps
    end
  end
end
