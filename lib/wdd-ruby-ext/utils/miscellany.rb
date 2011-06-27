module WDD
  module Utils
    def self.strip_html body
      body = body.to_s
      doc = Nokogiri::HTML::DocumentFragment.parse( CGI.unescapeHTML(body) )
      %w{script style}.each do |element_name|
        while element = doc.at_css(element_name)
          element.remove
        end
      end
      result = strip_tags(doc.to_html)
      result.blank? ? nil : result
    end
  end
end