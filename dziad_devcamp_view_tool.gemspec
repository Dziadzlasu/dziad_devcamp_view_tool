
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dziad_devcamp_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "dziad_devcamp_view_tool"
  spec.version       = DziadDevcampViewTool::VERSION
  spec.authors       = ["Dziad"]
  spec.email         = ["18483718+Dziadzlasu@users.noreply.github.com"]

  spec.summary       = %q{Various view-specific methods for my applications.}
  spec.description   = %q{Provides genereated HTML data for Rails applications.}
  spec.homepage      = "https://github.com/Dziadzlasu/dziad-devcamp-view-tool"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
