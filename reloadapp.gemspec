# -*- encoding: utf-8 -*-
require File.expand_path('../lib/reloadapp/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Roy van der Meij"]
  gem.email         = ["roy@royapps.nl"]
  gem.description   = %q{Stop reloading your browser when working on an app, automate it!}
  gem.summary       = %q{
Are you tired of always switching to you browser from you editor to hit reload? Reloadapp is your solution!

Reloadapp will watch your code for changes, and whenever it spots a change, it will reload all browsers currently open with your app.
  }
  gem.homepage      = "http://reloadapp.com"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "reloadapp"
  gem.require_paths = ["lib"]
  gem.version       = Reloadapp::VERSION
  gem.add_development_dependency "rb-fsevent"
end
