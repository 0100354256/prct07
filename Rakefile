$:.unshift File.dirname(__FILE__) + 'lib'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

task :default => :spec

# rake bin   # Run lib/frac_main.rb
# rake test  # Run tests with --format documentation
# rake thtml # Run tests with format: html

desc "# Ejecutar las espectativas de la clase Fraccion #"
task :spec do
        sh "rspec -I. spec/fraccion_spec.rb"
end

desc "# Run lib/frac_main.rb #"
task :bin do
        sh "rspec -I. lib/fraccion.rb"
end

desc "# Ejecutar con documentacion #"
task :test do
        sh "rspec -I. spec/fraccion_spec.rb --format documentation"
end

desc "# Ejecutar con formato html #"
task :thtml do
        sh "rspec -I. spec/fraccion_spec.rb --format html"
end
