# frozen_string_literal: true

require_relative "lib/my_awesome_gem/version"

Gem::Specification.new do |spec|
  spec.name = "my_awesome_gem"
  spec.version = MyAwesomeGem::VERSION
  spec.authors = ["Hemant Jha"]
  spec.email = ["hemantjha2005@gmail.com"]

  spec.summary = "This gem is a simple odd even classifier."
  spec.description = "It tells if a num is odd or even."
  spec.homepage = "https://github.com/hemantgithubpro/my_awesome_gem"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.2.0"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/hemantgithubpro/my_awesome_gem"
  spec.metadata["changelog_uri"]   = "https://github.com/hemantgithubpro/my_awesome_gem/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.require_paths = ["lib"]

end
