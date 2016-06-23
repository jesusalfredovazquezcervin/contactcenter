class CreateCalls < ActiveRecord::Migration
  def change
    create_table :calls do |t|
      t.references :company, index: true
      t.references :campaign, index: true
      t.string :result
      t.string :status
      t.datetime :later
      t.references :user, index: true

      t.timestamps
    end
  end
end
