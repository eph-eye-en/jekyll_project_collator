require_relative 'lib/jekyll_project_collator/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll_project_collator"
  spec.version       = JekyllProjectCollator::VERSION
  spec.authors       = ["finbobby123"]

  spec.summary       = %q{A Jekyll plugin which automatically creates pages for projects.}
  spec.homepage      = "https://github.com/finbobby123/jekyll_project_collator"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/finbobby123/jekyll_project_collator"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
