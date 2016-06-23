class Campaign < ActiveRecord::Base
  has_many :details
  validates :name, :presence => true
  TYPE = %w[inbound outbound]
end
