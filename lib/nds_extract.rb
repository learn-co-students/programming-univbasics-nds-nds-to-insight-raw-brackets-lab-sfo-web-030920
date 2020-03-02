$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

pp directors_database

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  
  row_index = 0
     name_array = []
     while row_index < directors_database.length do
      name_array.push(directors_database[row_index][:name])
      row_index += 1
     end
     puts name_array
 
    row_index = 0
    totals_array = [] 
    while row_index < directors_database.length do
     gross_sum = 0
     inner_array_index = 0
     
     while inner_array_index < directors_database[row_index][:movies].length do
      gross_sum += directors_database[row_index][:movies][inner_array_index][:worldwide_gross]
      inner_array_index += 1
     end
     row_index += 1
     totals_array.push(gross_sum)
     
    end
 



result = {}
directors_database.length.times { |index|
  result[name_array[index]] = totals_array[index]
  
  }

puts result
    
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  result
end
