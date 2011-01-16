require 'spec/autorun'
require 'spec/runner/formatter/text_mate_formatter'
require File.dirname(__FILE__) + '/../../spec_helper'

describe WDD::Utils::PrettyXml do
  it "works for string" do
    source = "<html><body>Hello</body></html>"
    pretty = WDD::Utils::PrettyXml.format(source)
    pretty.should == "<?xml version=\"1.0\" encoding=\"ISO-8859-1\"?>\n\n<html>\n   <body>Hello</body>\n</html>\n"
  end
  
  it "works for Nokogiri doc" do
    source = Nokogiri::HTML("<html><body>Hello</body></html>")
    pretty = WDD::Utils::PrettyXml.format(source)
    pretty.should == "<?xml version=\"1.0\" encoding=\"ISO-8859-1\"?>\n\n<html>\n   <body>Hello</body>\n</html>\n"
  end

end