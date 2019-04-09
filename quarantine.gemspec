# TEAM: backend_infra
#
$LOAD_PATH.push(File.expand_path("lib", __dir__))

# Maintain your gem's version:
require "quarantine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name = "quarantine"
  s.version = Quarantine::VERSION
  s.authors = ["Eric Zhu"]
  s.email = ["ericzhu77@gmail.com"]
  s.summary = "Dynamically query a list of quarantined flaky tests"

  s.files = Dir["{lib}/**/*", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency("aws-sdk", "~> 2.11.41")
  s.add_dependency("rails")
  s.add_dependency("rspec")
  s.add_dependency("rspec-retry", "~> 0.6.1")
end