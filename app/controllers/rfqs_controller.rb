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
	def destroy
		rfq = Rfq.find(params[:id])
		rfq.destroy
		redirect_to request.referrer
	end
	private
	def rfq_params
		params.require(:rfqs).permit(:commodity_type_id,
																:commodity_type_description_id, 
																:quantity,
																:commodity_type_uom_id,
																:pincode,
																:mobile_number).merge(:pending => true)

	end
end
