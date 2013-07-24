# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-idme/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-idme"
  s.version     = Omniauth::IDme::VERSION
  s.authors     = %w(ID.me)
  s.email       = %w(awesome@id.me)
  s.homepage    = "https://github.com/IDme/omniauth-idme"
  s.summary     = "ID.me strategy for OmniAuth"
  s.description = "ID.me strategy for OmniAuth"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = %w(lib)

  s.add_runtime_dependency "omniauth-oauth2"

  s.add_development_dependency "rspec", "~> 2.7"
  s.add_development_dependency "rake"
  s.add_development_dependency "webmock"
  s.add_development_dependency "rack-test"
end
