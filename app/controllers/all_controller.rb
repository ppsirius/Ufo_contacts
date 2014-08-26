class AllController < ApplicationController
	def index
# @cont = Contact.all

	@cities = City.joins(:contacts).group(Contact.arel_table[:city_id]).order(Contact.arel_table[:city_id].count).reverse	
@cities = Kaminari.paginate_array(@cities).page(params[:page]).per(10) 
	end
end
