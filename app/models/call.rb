class Call < ActiveRecord::Base
  belongs_to :company
  belongs_to :campaign
  belongs_to :user
end
