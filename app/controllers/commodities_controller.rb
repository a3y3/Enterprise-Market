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
			commodity = params[:selected_commodity]
			commodity = CommodityType.find_by(name: commodity)
			descriptions = commodity.commodity_type_descriptions
			render json: {data: descriptions.to_json}, status: 200
		end
	end
end
