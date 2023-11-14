# frozen_string_literal: true
require_relative '../application/html_parser'

HtmlParser.parse_html('https://www.hospitalsafetygrade.org/all-hospitals',
                      '#BlinkDBContent_849210', 'li', 'example_with_id.csv')

HtmlParser.parse_html('https://www.hospitalsafetygrade.org/all-hospitals',
                      'div.column1', 'li', 'example_with_class.csv')