class CommoditiesController < ApplicationController
	def search
		if(params[:commodity].present?)
			input = params[:commodity]
			commodities = CommodityType.all
			commodities_filtered = commodities.where("name ilike ?", "%#{input}%")
			render json: {data: commodities_filtered.to_json}, status: 200
		end
		if(params[:description].present?)
			input = params[:description]
			descriptions = CommodityTypeDescription.where()
		end
	end
end
