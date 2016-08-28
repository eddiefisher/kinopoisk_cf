module KinopoiskCf
  class Movie
    attr_accessor :id, :doc

    def initialize(id)
      @id = id
      @doc = KinopoiskCf.fetch("/getFilm?filmID=#{@id}")
    end

    def title_ru
      @doc["nameRU"]
    end

    def title_en
      @doc["nameEN"]
    end

    def year
      @doc["year"]
    end

    def duration
      @doc["filmLength"]
    end

    def country
      @doc["country"]
    end

    def slogan
      @doc["slogan"]
    end

    def description
      @doc["description"]
    end

    def poster
      @doc["posterURL"]
    end

    def premiere_ru
      @doc["rentData"]["premiereRU"]
    end

    def premiere_world
      @doc["rentData"]["premiereWorld"]
    end

    def budget
      if @doc.fetch("budgetData", false)
        @doc["budgetData"].fetch("budget", 0)
      end
    end

    def url
      @doc["webURL"]
    end

    def ratings
      [
        { title: 'imdb',      value: @doc["ratingData"]["rating"],     votes: @doc["ratingData"]["ratingVoteCount"] },
        { title: 'kinopoisk', value: @doc["ratingData"]["ratingIMDb"], votes: @doc["ratingData"]["ratingIMDbVoteCount"] }
      ]
    end

    def wallpapers
      gallery = Gallery.new(id)
      gallery.wallpapers
    end

    def actors
      ;
    end
  end
end
