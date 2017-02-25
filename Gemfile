source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails',        '5.0.1'
# Use postgresql as the database for Active Record
gem 'pg',           '0.18.4'
# Use Puma as the app server
gem 'puma',         '3.6.2'
# Use SCSS for stylesheets
gem 'sass-rails',   '5.0.6'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier',     '3.0.4'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '4.2.1'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '4.2.2'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder',     '2.6.1'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Use devise for login
gem 'devise',       '4.2.0'
# Rails integration with bower
gem 'bower-rails',  '0.11.0'
# Used to generate test data
gem 'faker',        '1.7.3'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'pry',                '0.10.4'
  gem 'rspec-rails',        '3.5.2'
  gem 'capybara',           '2.12.1'
  gem 'factory_girl_rails', '4.8.0'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console',  '3.4.0'
  gem 'listen',       '3.0.8'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
