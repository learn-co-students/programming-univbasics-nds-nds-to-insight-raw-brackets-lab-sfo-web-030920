$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

 
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  #require "pry"
  name_gross = {}
  def directors_totals(nds)
    #binding.pry
    total = 0
    row_idx = 0
    dir_name = nds[row_idx][:name]
    while row_idx < nds.length do
      col_idx = 0 
      while col_idx < nds[row_idx].length do
        total += nds[row_idx][:movies][col_idx][:worldwide_gross]
      end
      col_idx += 1
    end
    name_gross[dir_name] = total
    row_idx += 1
    total = 0
  end
  p name_gross  

