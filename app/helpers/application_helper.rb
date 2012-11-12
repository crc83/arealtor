module ApplicationHelper
  require "open-uri"
  require 'json'

  #Returns the full title on per page basis.
  def full_title(page_title)
    base_title = "ARealtor"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  #Returns joke from ICNDB
  def icndb_joke

    url = "http://api.icndb.com/jokes/random"
    begin
      joke = open(url).read()
      puts joke
      hash = JSON.parse joke
      joke_string = hash['value']['joke']
    rescue
      joke_string=''
    end
  end
end
