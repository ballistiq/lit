$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "lit/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "lit"
  s.version     = Lit::VERSION
  s.authors     = ["Maciej Litwiniuk"]
  s.email       = ["maciej@litwiniuk.net"]
  s.homepage    = "https://github.com/prograils/lit"
  s.summary     = "Database powered i18n backend with web gui"
  s.description = ""

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "> 3.1.0"
  s.add_dependency "jquery-rails"
  s.add_dependency 'sass-rails', '~> 3.1'
  s.add_dependency 'bootstrap-sass', '~> 2.1'
  s.add_dependency 'kaminari'
  s.add_dependency 'ransack'
  s.add_dependency 'haml'

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "devise"
  #s.add_test_dependency "capybara"
end