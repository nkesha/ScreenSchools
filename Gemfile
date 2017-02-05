source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.1'
gem 'sqlite3'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'

gem 'simple_form', '~> 3.4'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
gem 'coffee-script-source', '1.8.0'
gem 'devise', '~> 4.2'

group :development, :test do
gem 'foreman'
end



gem 'searchkick', '~> 2.1', '>= 2.1.1'
#gems for contact info
gem 'mail_form', '~> 1.6'

#end


gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'


group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console', '>= 3.3.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
