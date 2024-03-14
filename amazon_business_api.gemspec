# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'amazon_business_api/version'

Gem::Specification.new do |spec|
  spec.name = 'amazon_business_api'
  spec.version = AmazonBusinessApi::VERSION
  spec.authors = ['Kostas Kostoglou']
  spec.email = ['kostas@dropbot.sh']

  spec.required_ruby_version = '>= 3.1.0'

  spec.summary = 'A gem to interact with Amazon Business API using LedgerSync operations.'
  spec.description = 'A gem to interact with Amazon Business API using LedgerSync operations.'
  spec.homepage = 'https://dropbot.sh'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'aws-sigv4'
  spec.add_development_dependency('awesome_print', '>= 0')
  spec.add_development_dependency('bump', '~> 0.9.0')
  spec.add_development_dependency('bundler', '~> 2.1')
  spec.add_development_dependency('climate_control')
  spec.add_development_dependency('coveralls', '~> 0.8.23')
  spec.add_development_dependency('factory_bot', '~> 6.1.0')
  spec.add_development_dependency 'pry'
  spec.add_development_dependency('rake', '~> 13.0')
  spec.add_development_dependency('rspec', '~> 3.2')
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency('webmock', '>= 0')
  spec.add_runtime_dependency('dotenv')
  spec.add_runtime_dependency('ledger_sync', '>= 1.8.1')
  spec.add_runtime_dependency('nokogiri', '>= 0')
  spec.add_runtime_dependency('oauth2', '>= 0')
  spec.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
end
