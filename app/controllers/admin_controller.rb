class AdminController < ApplicationController
	access admin: :all
	def index
		@request_for_quotes = Rfq.where(pending: true)
	end
end
