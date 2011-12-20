$:.unshift File.join( File.dirname( __FILE__ ))
$:.unshift File.join( File.dirname( __FILE__ ), 'lib')

require 'rb-fsevent'
require 'growl_notify'

guard 'minitest' do
  watch(%r|^spec/(.*)_spec\.rb|)   { "spec" }
  watch(%r|^spec/_specs\.rb|)      { "spec" }
  watch(%r|^examples/(.*)\.rb|)    { "spec" }
  watch(%r|^lib/(.*)\.rb|)         { "spec" }
  watch(%r|^spec/spec_helper\.rb|) { "spec" }
end
