class RfqController < ApplicationController
	def new
		@commodities = CommodityType.all
	end
	def create
		rfq = Rfq.new(rfq_params)
		if rfq.save
			flash[:notice] = "Your request has been created."
			redirect_to root_path
		else
			flash[:alert] = "There was an error. Please contact support."
			redirect_to request.referrer
		end
	end
	private
	def rfq_params
		if(params[:rfq][:commodity] == "")
		end
		params.require(:rfq).permit(:commodity_type_id,
																:description, 
																:quantity,
																:uom,
																:pincode,
																:mobile_number).merge(:pending => true)

	end
end
