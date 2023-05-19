source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rails", "~> 7.0.3", ">= 7.0.3.1"
gem "sprockets-rails"
gem 'pg', '~> 1.2.3'
gem 'puma-daemon', '~> 0.1.2', require: false
gem "puma", "~> 5.0"
gem "jbuilder"

gem "activerecord-postgis-adapter", "~> 8.0"
gem 'rgeo-geojson', '~> 2.1.1'
gem "rgeo-proj4", "~> 4.0.0"

gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

gem "bootsnap", require: false


group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"

end

