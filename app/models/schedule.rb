class Schedule < ActiveRecord::Base
  belongs_to :company
  validates :name,
      :presence => true

  validates :company,
      :uniqueness => true
end
