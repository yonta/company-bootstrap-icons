require "open-uri"
require "nokogiri"

def main
  url = "https://github.com/twbs/icons/tree/main/icons"
  html = URI.parse(url).open
  doc = Nokogiri::HTML(html).css("div.js-navigation-container span.css-truncate")
  doc.each do |d|
    filename = d.children[0].attributes["title"].value
    pp File.basename(filename, ".*")
  end
end

main
