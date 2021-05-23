require_relative 'lib/spotify_paylist_generator/version'

Gem::Specification.new do |spec|
  spec.name          = "spotify_paylist_generator"
  spec.version       = SpotifyPaylistGenerator::VERSION
  spec.authors       = ["Edward"]
  spec.email         = ["eduard.hura@gmail.com"]

  spec.summary       = 'Test gem'
  spec.description   = 'Playlist generator'
  spec.homepage      = "https://github.com/edwardhura/spotify_paylist_generator"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/edwardhura/spotify_paylist_generator"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/edwardhura/spotify_paylist_generator"
  spec.metadata["changelog_uri"] = "https://github.com/edwardhura/spotify_paylist_generator"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
