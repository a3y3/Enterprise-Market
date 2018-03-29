class AdminController < ApplicationController
	access admin: :all
	layout "admin"
	def rfq_all
		@request_for_quotes = Rfq.all
	end
	def rfq_pending
		@request_for_quotes = Rfq.where(pending: true)
	end
end
