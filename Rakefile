require "rubygems"
require "rubygems/package_task"
require "rdoc/task"

require "rake/testtask"
Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList["test/**/*_test.rb"]
  t.verbose = false
end


task :default => [:test]

spec = Gem::Specification.new do |s|

  s.name              = "Euler.rb"
  s.version           = "1.0"
  s.summary           = "some neat methods which are useful for project euler"
  s.author            = "Fraser Murray"
  s.email             = "fraser.m.murray@gmail.com"
  s.homepage          = "http://gihub.com/intolerable/euler.rb"

  s.has_rdoc          = true
  s.extra_rdoc_files  = %w(README)
  s.rdoc_options      = %w(--main README)

  s.files             = %w(README) + Dir.glob("{test,lib}/**/*")
  s.require_paths     = ["lib"]

end

Gem::PackageTask.new(spec) do |pkg|
  pkg.gem_spec = spec
end

desc "Build the gemspec file #{spec.name}.gemspec"
task :gemspec do
  file = File.dirname(__FILE__) + "/#{spec.name}.gemspec"
  File.open(file, "w") {|f| f << spec.to_ruby }
end

task :package => :gemspec

RDoc::Task.new do |rd|
  rd.main = "README"
  rd.rdoc_files.include("README", "lib/**/*.rb")
  rd.rdoc_dir = "rdoc"
end

desc 'Clear out RDoc and generated packages'
task :clean => [:clobber_rdoc, :clobber_package] do
  rm "#{spec.name}.gemspec"
end
