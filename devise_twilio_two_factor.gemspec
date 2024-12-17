# frozen_string_literal: true

require_relative 'lib/devise_twilio_two_factor/version'

Gem::Specification.new do |spec|
  spec.name = 'devise_twilio_two_factor'
  spec.version = DeviseTwilioTwoFactor::VERSION
  spec.authors     = ['John Livingston']
  spec.email       = 'jclivingston316@gmail.com'


  spec.platform    = Gem::Platform::RUBY
  spec.licenses    = ['MIT']
  spec.summary     = 'Devise Twilio Verify Two Factor Authentication'
  spec.homepage    = 'https://github.com/jliv316/devise-twilio-two-factor'
  spec.description = 'Devise Twilio Verify Two Factor Authentication'
  spec.required_ruby_version = '>= 2.6.0'

  # spec.metadata['allowed_push_host'] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/Jliv316/devise_twilio_two_factor'
  # spec.metadata['changelog_uri'] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']



  spec.add_runtime_dependency 'railties',       '>= 4.1.0'
  spec.add_runtime_dependency 'devise',         '~> 4.8.1'
  spec.add_runtime_dependency 'twilio-ruby',    '~> 5.77.0'

  spec.add_development_dependency 'bundler',    '> 1.0'
  spec.add_development_dependency 'rspec',      '> 3'
  spec.add_development_dependency 'activemodel'
  spec.add_development_dependency 'pry'
end
