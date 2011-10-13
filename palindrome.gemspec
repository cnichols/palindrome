# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "palindrome/version"

Gem::Specification.new do |s|
  s.name        = "palindrome"
  s.version     = Palindrome::VERSION
  s.authors     = ["Chris Nichols"]
  s.email       = ["chris@clnichols.com"]
  s.homepage    = "https://github.com/cnichols/palindrome"
  s.summary     = %q{A gem to identify palindromes}
  s.description = %q{Adds 'palindrome?' method to String class}

  s.rubyforge_project = "palindrome"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
