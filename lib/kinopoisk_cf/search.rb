module KinopoiskCf
  class Search
    def self.movies(keyword)
      movies = KinopoiskCf.fetch("/searchFilms?keyword=#{keyword}")
      movies['searchFilms'].map { |movie| KinopoiskCf::Movie.new(movie['id']) }
    end

    def self.peoples
      movies = KinopoiskCf.fetch("/searchPeople?keyword=#{keyword}")
    end
  end
end
