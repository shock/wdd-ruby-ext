require 'singleton'
require 'nokogiri'

# Formats XML with standard indention.
# Credit: http://stackoverflow.com/questions/1898829/nokogiri-pretty-printing
module WDD
  module Utils
    class PrettyXml
      include Singleton

      def initialize
        @xsl ||= Nokogiri::XSLT(File.open(File.expand_path('../../resources/pretty_xml.xsl', __FILE__)))
      end

      def format source
        source = Nokogiri(source) if source.is_a? String
        @xsl.apply_to(source).to_s
      end
      
      class << self
        def format source
          PrettyXml.instance.format( source )
        end
      end
    end
  end
end
