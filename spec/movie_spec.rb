require 'spec_helper'

describe KinopoiskCf::Movie do
  it 'get movie by id' do
    movie = KinopoiskCf::Movie.new('714888')
    expect(movie).not_to be nil
  end

  it 'movie title' do
    movie1 = KinopoiskCf::Movie.new('714888')
    movie2 = KinopoiskCf::Movie.new('843558')
    expect(movie1.name_ru).to eq("Звёздные войны: Пробуждение силы")
    expect(movie2.name_ru).to eq("Франкенштейн")
  end
end
