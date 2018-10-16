
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "submodule/version"

Gem::Specification.new do |spec|
  spec.name          = "git-sbm"
  spec.version       = Submodule::VERSION
  spec.authors       = ["Rodrigo Carvalho"]
  spec.email         = ["rcdasilva94@gmail.com"]
  spec.platform         = Gem::Platform::RUBY

  spec.summary       = %q{A tool to help manage git submodules}
  spec.homepage      = "https://github.com/rcarvalhosilva/git-submodules"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "fileutils"
  spec.add_development_dependency "cucumber"
  spec.add_development_dependency "aruba"

  spec.add_dependency "thor"
  spec.add_dependency "fileutils"
end
