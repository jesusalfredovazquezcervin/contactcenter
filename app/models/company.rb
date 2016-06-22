class Company < ActiveRecord::Base
  has_one :schedule
  has_one :contact
  has_one :address
  validates :tradeName, :rfc, :employees, :comercialBusiness,
            presence: true
  validates :businessName,
            presence: true,
            uniqueness: {scope: :rfc}

  validates :rfc, uniqueness:true

  before_save :uppercase_rfc

  def uppercase_rfc
    rfc.upcase!
  end

end
