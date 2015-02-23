# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','blink','version.rb'])
spec = Gem::Specification.new do |s|
  s.name = 'blink'
  s.version = Blink::VERSION
  s.author = 'Przemysław Dąbek'
  s.email = 'przemyslaw.dabek@lunarlogic.io'
  s.homepage = 'http://www.lunarlogic.io'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Tool simplyfing access to remote machines'
  s.files = `git ls-files`.split(/[\r\n]/)
  s.require_paths << 'lib'
  s.has_rdoc = false
  s.bindir = 'bin'
  s.executables << 'blink'
  s.add_runtime_dependency('gli','2.12.2')
end
