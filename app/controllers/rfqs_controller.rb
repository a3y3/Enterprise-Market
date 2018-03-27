class RfqsController < ApplicationController
	def new
		@commodities = CommodityType.all
	end
	def create
		rfq = Rfq.new(rfq_params)
		if rfq.save
			redirect_to rfq_success_path
		else
			flash[:alert] = "There was an error in creating your request. Please try again!"
			redirect_to request.referrer
		end
	end
	private
	def rfq_params
		params.require(:rfq).permit(:commodity_type_id,
																:description, 
																:quantity,
																:uom,
																:pincode,
																:mobile_number).merge(:pending => true)

	end
end
