require_relative "../movielovers.rb"

describe "Movie Finder" do 
	before :each do
		@finder = MovieFinder.new
	end

	it "should return a list of movies if a title is included" do
		expect(@finder.find_movie("zugarramurdi")).to be_truthy
	end

	it "should return films only with postr" do
		expect(@finder.top_9("zugarramurdi")).to be_truthy
	end

end