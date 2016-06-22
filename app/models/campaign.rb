class Campaign < ActiveRecord::Base
  validates :name, :presence => true
  TYPE = %w[inbound outbound]
end
