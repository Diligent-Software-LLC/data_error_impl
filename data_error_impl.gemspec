lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "data_error_impl/version"

Gem::Specification.new do |spec|
  spec.name    = "data_error_impl"
  spec.version = DataErrorImpl::VERSION
  spec.authors = ["Bradley J. Tannor", "Diligent Software LLC"]
  spec.email   = ["bradleytannor@gmail.com"]

  spec.summary     = %q{Implements and subclasses the DataError interface.}
  spec.description = %q{Implements and subclasses the `DataError` interface. Defines the acceptable data
argument types. Contains six methods. Three are `public` instance methods,
one is a `private` instance method, and two are helper methods.}
  spec.homepage    = "https://github.com/scientist8202/data_error_impl"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = " Set to 'http://mygemserver.com'"
  #
  #   spec.metadata["homepage_uri"] = spec.homepage
  #   spec.metadata["source_code_uri"] = " Put your gem's public repo URL here."
  #   spec.metadata["changelog_uri"] = " Put your gem's CHANGELOG.md URL here."
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  spec.add_dependency 'data_error', '~> 1.0.1'

end
