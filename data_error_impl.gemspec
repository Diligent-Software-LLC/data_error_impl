lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

VERSION = '1.4.4'.freeze()

Gem::Specification.new do |spec|

  spec.name                  = 'data_error_impl'
  spec.version               = VERSION
  spec.authors               = ['Bradley J. Tannor', 'Diligent Software LLC']
  spec.email                 = ['bradleytannor@gmail.com',
                                'diligentsoftwarellc@gmail.com']
  spec.summary               = %q{Implements and subclasses the DataError interface and
 Abstract Base class.}
  spec.description           = %q{Implements and subclasses the DataError interface
and Abstract Base class. Defines the acceptable data
argument types. Contains seven methods. Four are public instance methods,
one is a private instance method, and two are helper methods.}
  spec.homepage              = 'https://github.com/Diligent-Software-LLC/data_error_impl'
  spec.license               = 'MIT'
  spec.required_ruby_version = '~> 2.6.5'

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
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Development and testing dependencies
  spec.add_development_dependency 'bundler', '~> 2.1.2'
  spec.add_development_dependency 'simplecov', '~> 0.17.1'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'

  # Gem specific runtime dependencies
  spec.add_dependency 'data_error', '~> 1.1.2'

end
