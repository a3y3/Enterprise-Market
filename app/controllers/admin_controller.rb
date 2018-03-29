class AdminController < ApplicationController
	access admin: :all
	layout "admin"
	def rfq_all
		@request_for_quotes = Rfq.all
	end
	def rfq_pending
		@request_for_quotes = Rfq.where(pending: true)
	end
	def rfq_show
		@rfq = Rfq.find(params[:id])
	end
	def rfq_commodity
		@request_for_quotes = Rfq.where(commodity_type_id: params[:id])
	end
	def rfq_description
		@request_for_quotes = Rfq.where(commodity_type_description_id: params[:id])
	end
end
