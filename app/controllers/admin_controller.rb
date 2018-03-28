class AdminController < ApplicationController
	access admin: :all
	layout "admin"
	def index
		@request_for_quotes = Rfq.where(pending: true)
	end
end
