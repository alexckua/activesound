source 'https://rubygems.org'

ruby '2.6.3'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'bcrypt', '~> 3.1.7'
gem 'carrierwave'
gem 'carrierwave-audio'
gem 'carrierwave-base64'
gem 'devise'
gem 'graphql', '~> 1.9.4'
gem 'jbuilder', '~> 2.7'
gem 'jwt'
gem 'kaminari'
gem 'mime-types', require: 'mime/types/full'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.11'
gem 'pundit'
gem 'rack-cors'
gem 'rails', '~> 6.0.0'
gem 'ransack'
gem 'sass-rails', '~> 5'
gem 'slim-rails'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'webpacker', '~> 4.0'

group :development, :test, :staging do
  gem 'airborne'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'graphiql-rails'
  gem 'pry-rails'
  gem 'rails-controller-testing'
  gem 'rspec-rails', '~> 3.8'
  gem 'rubocop', require: false
  gem 'shoulda-matchers', '~> 3.1'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end
