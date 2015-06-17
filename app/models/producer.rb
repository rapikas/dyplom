class Producer < ActiveRecord::Base

  attr_accessible :name, :link, :description

  validates :name, presence: true, uniqueness: true

end
