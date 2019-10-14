class SearchController < ApplicationController

	def index
		@members = SearchFacade.new(params[:house]).members
	end
	
end