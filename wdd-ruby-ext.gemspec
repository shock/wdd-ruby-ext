# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{wdd-ruby-ext}
  s.version = "0.4.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["shock"]
  s.date = %q{2011-08-30}
  s.description = %q{Some of these are borrowed.  Some are original.  This gem simply provides a single place to source control them all for incorporation into other projects.}
  s.email = %q{billdoughty@capitalthought.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rvmrc",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/wdd-ruby-ext.rb",
    "lib/wdd-ruby-ext/array.rb",
    "lib/wdd-ruby-ext/hash.rb",
    "lib/wdd-ruby-ext/http.rb",
    "lib/wdd-ruby-ext/numbers.rb",
    "lib/wdd-ruby-ext/object.rb",
    "lib/wdd-ruby-ext/resources/pretty_xml.xsl",
    "lib/wdd-ruby-ext/string.rb",
    "lib/wdd-ruby-ext/system.rb",
    "lib/wdd-ruby-ext/time.rb",
    "lib/wdd-ruby-ext/utils.rb",
    "lib/wdd-ruby-ext/utils/fixed_point.rb",
    "lib/wdd-ruby-ext/utils/hash_object.rb",
    "lib/wdd-ruby-ext/utils/helpers.rb",
    "lib/wdd-ruby-ext/utils/miscellany.rb",
    "lib/wdd-ruby-ext/utils/pretty_xml.rb",
    "lib/wdd-ruby-ext/utils/simpledebug.rb",
    "lib/wdd-ruby-ext/utils/spinner.rb",
    "lib/wdd-ruby-ext/utils/test_server.rb",
    "lib/wdd-ruby-ext/utils/time_gate.rb",
    "spec/lib/utils/fixed_point_spec.rb",
    "spec/lib/utils/pretty_xml_spec.rb",
    "spec/spec.opts",
    "spec/spec_helper.rb",
    "spec/wdd-ruby-ext_spec.rb",
    "wdd-ruby-ext.gemspec"
  ]
  s.homepage = %q{http://github.com/shock/wdd-ruby-ext}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Handy extensions to the Ruby base classes and other utilities.}
  s.test_files = [
    "spec/lib/utils/fixed_point_spec.rb",
    "spec/lib/utils/pretty_xml_spec.rb",
    "spec/spec_helper.rb",
    "spec/wdd-ruby-ext_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<wdd-ruby-ext>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_runtime_dependency(%q<nokogiri>, ["~> 1.4.1"])
      s.add_runtime_dependency(%q<eventmachine>, ["~> 0.12.10"])
    else
      s.add_dependency(%q<wdd-ruby-ext>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_dependency(%q<nokogiri>, ["~> 1.4.1"])
      s.add_dependency(%q<eventmachine>, ["~> 0.12.10"])
    end
  else
    s.add_dependency(%q<wdd-ruby-ext>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
    s.add_dependency(%q<nokogiri>, ["~> 1.4.1"])
    s.add_dependency(%q<eventmachine>, ["~> 0.12.10"])
  end
end

