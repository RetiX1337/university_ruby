# frozen_string_literal: true
require 'nokogiri'
require 'csv'
require 'open-uri'

class HtmlParser
  def self.parse_html(url, css_element, html_element, csv_path='output.csv')
    document = Nokogiri::HTML(URI.open(url))

    CSV.open(csv_path, 'w') do |csv|
      list = document.css(css_element)

      list.search(html_element).each_with_index do |element, index|
        csv << [index + 1, element.text]
      end
    end
  end
end
