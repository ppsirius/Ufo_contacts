class Contact < ActiveRecord::Base
	belongs_to :city
	validates :contact, :numericality => { :greater_than => 0 }
end
