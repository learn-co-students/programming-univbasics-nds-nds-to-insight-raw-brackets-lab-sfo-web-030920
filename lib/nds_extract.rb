$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

nds = directors_database
def directors_totals(nds)
   result = {}
  nds.each do |director|
    result[director[:name]] = 0
    director[:movies].each do |movie|
      result[director[:name]] += movie[:worldwide_gross]
    end
  end
  pp result
  result
end

