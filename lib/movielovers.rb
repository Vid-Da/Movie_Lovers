require "pry"
require "imdb"
require "rspec"

class MovieFinder

	def initialize
	  @films = []
	  @top9 = []
	end

  def find_movie(movie_title)
   	@films = Imdb::Search.new(movie_title)
binding.pry
  end

  def top_9(movie_title)
  	find_movie(movie_title)
  	movies = []

  	i = 0
    while movies.size < 9
      
      if(@films.movies[i].poster != nil)
        movies << @films.movies[i]
      end
      
      i += 1
    end
    
    movies  	
	end
end

