class Contact < ActiveRecord::Base
	belongs_to :city
	validates :contact_num, :numericality => { :greater_than => 0 }
end
