class Intro < ActiveRecord::Base

  attr_accessible :name, :description

  validates :name, presence: true, uniqueness: true

end
