# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'advent_of_code/version'

Gem::Specification.new do |spec|
  spec.name          = 'advent_of_code'
  spec.version       = AdventOfCode::VERSION
  spec.authors       = ['Spawnbroker']
  spec.email         = ['eiche_jim@yahoo.com']

  spec.summary       = 'A place to play around with Advent of Code solutions'
  spec.license       = 'MIT'

  spec.required_ruby_version = '>= 3.1.2'

  spec.metadata = {
    'rubygems_mfa_required' => 'true'
  }

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.3.26'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'reek', '~> 6.1.2'
  spec.add_development_dependency 'rexml', '~> 3.1.9.1'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 1.26.0'
  spec.add_development_dependency 'rubocop-rake', '~> 0.6.0'
  spec.add_development_dependency 'rubocop-rspec', '~> 2.11.1'
  spec.add_development_dependency 'standard', '~> 1.9.0'
end
