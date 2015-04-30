class SearchController < ApplicationController
	def index
		
			imdbID = params.require(:q)
			movie_resp = Typhoeus.get("http://www.omdbapi.com", params: { s: imdbID })
			@movie_body = JSON.parse(movie_resp.body)["Search"]
			
			
		
	end

	

end
