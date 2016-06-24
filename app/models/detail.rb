class Detail < ActiveRecord::Base
  belongs_to :company
  belongs_to :campaign
  belongs_to :user

  def self.search(search, user)
    if search
      #find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
      companies = Company.where(employees:  1..(search[:employees]).to_i  )
      companies.each{|c|
        if Detail.where(company_id: c.id, campaign_id: search[:id]).count == 0
            Detail.create(company_id: c.id, campaign_id: search[:id], user_id: user.id)
        end
      }
    end
    self.where(:campaign_id=> search[:id] )
  end
end
