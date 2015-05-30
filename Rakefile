require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "wdd-ruby-ext"
    gem.summary = %Q{Handy extensions to the Ruby base classes and other utilities.}
    gem.description = %Q{Some of these are borrowed.  Some are original.  This gem simply provides a single place to source control them all for incorporation into other projects.}
    gem.email = "github@wdoughty.net"
    gem.homepage = "http://github.com/shock/wdd-ruby-ext"
    gem.authors = ["shock"]
    gem.add_development_dependency "rspec", '~> 1.3'
    gem.add_dependency "nokogiri", "~> 1.4.1"
    gem.add_dependency "eventmachine", "~> 0.12.10"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

