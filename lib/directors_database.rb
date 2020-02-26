require "pry"
#binding.pry

require 'yaml'

def directors_database
	rot13 = -> (s) { s.tr('A-Za-z', 'N-ZA-Mn-za-m') }
  @_db ||= YAML.load(rot13.call(File.open("directors_db").read.to_s))
end

#pp directors_database



name_gross = {}
def directors_total
  total = 0
  row_idx = 0
  dir_name = directors_database[row_idx][:name]
  while row_idx < directors_database.length do
    col_idx = 0 
    while col_idx < directors_database[row_idx].length do
      total += directors_database[row_idx][col_idx][:worldwide_gross]
    end
    col_idx += 1
  end
  name_gross[dir_name] = total
  row_idx += 1
  total = 0
end
p name_gross   