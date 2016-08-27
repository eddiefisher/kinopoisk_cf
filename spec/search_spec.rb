require 'spec_helper'

describe KinopoiskCf::Search do
  it 'search movies by title' do
    movies = KinopoiskCf::Search.movies("звездные")
    expect(movies.count).to be 20
  end
end
