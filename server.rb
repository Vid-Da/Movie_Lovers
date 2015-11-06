require "sinatra"
require "sinatra/reloader" if development?
require "imdb"

require_relative("lib/movielovers.rb")

searcher = MovieFinder.new

get "/" do
	erb(:movie_finder)
end

post "/movie" do
	find = params[:film]
	@selection = searcher.top_9 find
	erb(:movie)
end

