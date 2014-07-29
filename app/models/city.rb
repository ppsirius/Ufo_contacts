class City < ActiveRecord::Base
	has_many :contacts
	validates :name, uniqueness: true
end
