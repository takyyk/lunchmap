source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.2'

gem 'rails', '~> 6.0.2'
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 6.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'rails-i18n', '~> 6.0'
gem 'slim-rails'
gem 'webpacker', github: 'rails/webpacker'

gem 'sorcery'

gem 'draper'

gem 'carrierwave', '>= 2.0.0.rc', '< 3.0'
gem 'mini_magick'
gem 'fog-aws'
gem 'font-awesome-sass', '~> 5.9.0'

gem 'faker'
gem 'gimei'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'pry'
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry-rails'

  # Test
  gem 'factory_bot_rails', '~> 5.1.1'
  gem 'rspec-rails', '~> 3.8'
  gem 'spring-commands-rspec'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Code analyze
  gem 'brakeman', require: false
  gem 'bullet'
  gem 'rails_best_practices'
  gem 'reek'
  gem 'rubocop-rails'
  gem 'scss_lint'
  gem 'slim_lint'

  # Schema
  gem 'annotate'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'launchy'
  gem 'timecop'
  gem 'simplecov', require: false
  gem 'rspec_junit_formatter', '~> 0.4.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
