require 'nokogiri'
require 'open-uri'



class Scraper

  attr_reader(:doc)

  def initialize(url)
    @url = url
    @html_file = open(url)
    @doc = Nokogiri::HTML(@html_file)
  end
end

class ScraperHackerNews < Scraper

  def initialize
    url = "https://news.ycombinator.com/"
    super(url)
  end

  def scrap
    posts = []
        @doc.search('.title > a').each do |element|
        title = element.inner_text
        source_url = element['href']
        r = element.parent.parent.next_sibling
        r != nil ? rating = r.search('.subtext > span').inner_text.match(/\d/) : rating = '0'
        date = Time.now
        posts << {name: title, source_url: source_url, rating: rating, date: date}
      end
    posts
  end

end