$:.unshift File.join( File.dirname( __FILE__ ))
$:.unshift File.join( File.dirname( __FILE__ ), 'lib')

require 'rake'
require 'rake/testtask'
require 'peas'

Rake::TestTask.new(:test) do |t|
  t.libs << "spec"
  t.test_files = FileList["spec/**/*_spec.rb"]
  t.verbose = true
end

task :build do
  system "gem build peas.gemspec"
end
 
task :release => :build do
  # system "gem push peanuts-#{Peanuts::VERSION}.gem"
end

task :default => [:test]
