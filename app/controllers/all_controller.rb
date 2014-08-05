class AllController < ApplicationController
	def index
		@city_all = City.all
		@contact_all = Contact.all
	end
end
