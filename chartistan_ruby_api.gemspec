# frozen_string_literal: true

require_relative "lib/chartistan_ruby_api/version"

Gem::Specification.new do |spec|
  spec.name          = "chartistan_ruby_api"
  spec.version       = ChartistanRubyApi::VERSION
  spec.authors       = ["A medical student"]
  spec.email         = ["icantremember111@gmail.com"]

  spec.summary       = "A Ruby Client for the Chartistan API"
  spec.description   = "A Ruby Client for the Chartistan API that currently allows dataset creation"
  spec.homepage      = "https://www.chartistan.com/clients/ruby"
  spec.required_ruby_version = ">= 2.5.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://www.github/com/wordjelly/chartistan_ruby_api"
  spec.metadata["changelog_uri"] = "https://www.github.com/wordjelly/chartistan_ruby_api/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
=begin
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
=end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "typhoeus"
  spec.add_dependency "activesupport"
  spec.add_dependency "byebug"
  spec.add_dependency "nokogiri"

end
