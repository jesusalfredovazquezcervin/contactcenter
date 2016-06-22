class Schedule < ActiveRecord::Base
  belongs_to :company
  validates :company_id, :name,
      :presence => true

  validates :company,
      :uniqueness => true
end
