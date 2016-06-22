class Address < ActiveRecord::Base
  belongs_to :state
  belongs_to :company
  validates :name, :presence => true
end
