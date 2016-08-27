module KinopoiskCf
  class Gallery
    def initialize(id)
      @data = KinopoiskCf.fetch("/getGallery?filmID=#{id}")
    end

    def wallpapers
      @data["gallery"]["kadr"].map { |kadr| kadr["image"] }
    end

    def posters
      @data["gallery"]["poster"].map { |poster| poster["image"] }
    end
  end
end
