class Contact < ActiveRecord::Base

  attr_accessible :name, :surname, :description

  validates :name, presence: true, uniqueness: true


end
