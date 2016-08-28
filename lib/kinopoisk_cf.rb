require 'uri'
require 'json'
require 'httpclient'

require "kinopoisk_cf/file_cache"
require "kinopoisk_cf/version"
require "kinopoisk_cf/search"
require "kinopoisk_cf/movie"
require "kinopoisk_cf/person"
require "kinopoisk_cf/gallery"

module KinopoiskCf
  def self.path
    'http://api.kinopoisk.cf'
  end

  def self.fetch(url)
    JSON.parse(cached_response(url))
  end

  def self.cached_response(url)
    cache = FileCache.new("", "#{Dir.pwd}/tmp/kinopoisk_cf", 0, 3)

    cache.get_or_set("#{path}/#{url}") do
      response = HTTPClient.new.get URI.escape("#{path}/#{url}"), nil, { 'User-Agent'=>'a', 'Accept-Encoding'=>'a' }
      response.body
    end
  end
end
