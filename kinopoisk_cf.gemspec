# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kinopoisk_cf/version'

Gem::Specification.new do |spec|
  spec.name          = "kinopoisk_cf"
  spec.version       = KinopoiskCf::VERSION
  spec.authors       = ["eddiefisher"]
  spec.email         = ["eddi.fisher@googlemail.com"]

  spec.summary       = "Открытое API сайта kinopoisk.ru"
  spec.description   = "Нравится API? Это ведь гораздо удобнее, чем парсить странички кинопоиска, а после обновления крыть всех благим матом."
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files`.split("\n")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
