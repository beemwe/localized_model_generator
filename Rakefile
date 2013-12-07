require "bundler"
Bundler.setup

# require "rspec/core/rake_task"
# Rspec::Core::RakeTask.new(:spec)

gemspec = eval(File.read("localized_model_generator.gemspec"))

task :build => "#{gemspec.full_name}.gem"

file "#{gemspec.full_name}.gem" => gemspec.files + ["localized_model_generator.gemspec"] do
  system "gem build localized_model_generator.gemspec"
  system "gem install localized_model_generator-#{LocalizedModelGenerator::VERSION}.gem"
end