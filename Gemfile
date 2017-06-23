source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "rails", "~> 5.0.4"
gem "sqlite3"
gem "puma", "~> 3.0"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.2"
gem "jquery-rails"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"

group :development, :test do
  gem "rspec-rails", "~> 3.5"
  gem "byebug", platform: :mri
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", "~> 3.0.5"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  gem "guard",                    "2.13.0"
  gem "guard-minitest",           "2.4.4"
  gem "minitest-reporters",       "1.1.14"
  gem "rails-controller-testing", "1.0.2"
  gem "rspec-collection_matchers"
  gem "rubocop", "0.49.1", require: false
  gem "rubocop-checkstyle_formatter", require: false
  gem "scss_lint", require: false
  gem "scss_lint_reporter_checkstyle", require: false
  gem "rails_best_practices"
  gem "brakeman", require: false
  gem "eslint-rails", git: "https://github.com/octoberstorm/eslint-rails"
  gem "reek"
  gem "rspec-activemodel-mocks"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
