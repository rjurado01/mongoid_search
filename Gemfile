source 'http://rubygems.org'

gemspec

case version = ENV['MONGOID_VERSION'] || '7.0'
when 'HEAD'
  gem 'mongoid', github: 'mongodb/mongoid'
when /^7/
  gem 'mongoid', '~> 7.0'
when /^6/
  gem 'mongoid', '~> 6.0'
when /^5/
  gem 'mongoid', '~> 5.0'
when /^4/
  gem 'mongoid', '~> 4.0'
when /^3/
  gem 'mongoid', '~> 3.1'
else
  gem 'mongoid', version
end

group :development do
  gem 'rake', '< 12'
  gem 'rubocop', '0.52.0'
  gem 'simplecov'
end

group :test do
  gem 'mongoid-danger', '~> 0.1.0', require: false
end
