class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :name
      t.string :campaignType
      t.date :finish

      t.timestamps
    end
  end
end
