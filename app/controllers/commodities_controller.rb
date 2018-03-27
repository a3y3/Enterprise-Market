class CommoditiesController < ApplicationController
	def search
		commodities = CommodityType.all
		input = params[:input]
		commodities_filtered = commodities.where("name ilike ?", "%#{input}%")
		render json: {data: commodities_filtered.to_json}, status: 200
	end
end
