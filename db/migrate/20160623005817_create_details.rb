class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.references :company, index: true
      t.references :campaign, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
