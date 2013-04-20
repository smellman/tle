# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
#require 'tle'

Gem::Specification.new do |spec|
  spec.name          = "tle"
  spec.version       = "0.0.0"
  spec.authors       = ["David MacMahon (gemification)", "Taro Matsuzawa"]
  spec.email         = ["davidm@astro.berkeley.edu", "taro@georepublic.co.jp"]
  spec.description   = "Provides Ruby bindings to sgp4 TLE library"
  spec.summary       =  <<-EOD
    TLE prediction code for Ruby based on C++ sgp4 code included in
    http://celestrak.com/publications/AIAA/2006-6753/AIAA-2006-6753.zip
    EOD
  spec.homepage      = "http://tle.rubyforge.org/"
  spec.license       = "MIT"
  spec.required_ruby_version = '>= 1.8.1'

  spec.files = FileList[
    'README.rdoc',
    'Rakefile',
    'lib/tle.rb',
    'ext/debug1.i',
    'ext/debug2.i',
    'ext/debug3.i',
    'ext/debug4.i',
    'ext/debug5.i',
    'ext/debug6.i',
    'ext/debug7.i',
    'ext/extconf.rb',
    'ext/rb_tle.cpp',
    'ext/sgp4ext.cpp',
    'ext/sgp4ext.h',
    'ext/sgp4io.cpp',
    'ext/sgp4io.h',
    'ext/sgp4unit.cpp',
    'ext/sgp4unit.h',
    'test/tcppver.out',
    'test/test.rb'
  ]
  #spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  #spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  #spec.require_paths = ["lib"]
  spec.extensions = %w[ ext/extconf.rb ]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
    # Documentation
  spec.has_rdoc = true
  #s.rdoc_options = %w[-m README.rdoc -E c=cpp]
  spec.rdoc_options = %w[-m README.rdoc]
  spec.extra_rdoc_files = %w[README.rdoc ext/rb_tle.cpp]

end
