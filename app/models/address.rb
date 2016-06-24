class Address < ActiveRecord::Base
  belongs_to :state
  belongs_to :company
  validates :name, :presence => true
  def full
    self.street << " " <<  self.external  <<     (self.internal.nil? ? (""):(" int " << self.internal  ) )    << ", " << self.suburb << ", " << self.state.name << " " << self.postalCode
  end
end
