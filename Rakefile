$:.unshift File.join( File.dirname( __FILE__ ))
$:.unshift File.join( File.dirname( __FILE__ ), 'lib')

require 'rake'
require 'rake/testtask'
require 'peas/version'

Rake::TestTask.new(:test) do |t|
  t.libs << "spec"
  t.test_files = FileList["spec/**/*_spec.rb"]
  t.verbose = true
end

task :build do
  system "gem build ../gemspecs/peas.gemspec"
  system "mv peas-#{Peas::VERSION}.gem ../gems"
end
 
task :local => :build do
  system "gem install ../gems/peas-#{Peas::VERSION}.gem"
end

task :release => :build do
  system "gem push ../gems/peas-#{Peas::VERSION}.gem"
end

task :default => [:test]
