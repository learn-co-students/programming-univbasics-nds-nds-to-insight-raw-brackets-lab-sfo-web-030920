$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

nds = directors_database
pp nds
# def directors_totals(nds)
#   # Remember, it's always OK to pretty print what you get *in* to make sure
#   # that you know what you're starting with!
#   #
#   #
#   # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
#   result = {
#   }
#   #
#   # Use loops, variables and the accessing method, [], to loop through the NDS
#   # and total up all the
#   # ...
#   # ...
#   # ...
#   #
#   #
#   # Be sure to return the result at the end!
#   row_index = 0
#   final_hash = {}
#   total_insight = 0
#   while row_index < nds.count do
#     column_index = 0
#     while column_index < nds[row_index][:movies][column_index].count do
#       result[:name1] = nds[row_index][:name]
#       total_insight += nds[row_index][:movies][column_index][:worldwide_gross]
#       result[:worldwide_gross] = total_insight
#       column_index +=1
#     end
#     row_index +=1
#   end
#   pp result
# end
def directors_totals(nds)
  # row_index = 0
  # total_insight = 0
  # while row_index < nds.length do
  #   column_index = 0
  #   while column_index < nds[row_index].length do
  #     inner_len = nds[row_index][:movies][column_index].length
  #     inner_index = 0
  #     while inner_index < inner_len do 
  #       total_insight += nds[row_index][:movies][inner_index][:worldwide_gross]
  #       name = nds[inner_index][:name]
  #       result = [{name: name, worldwide_gross: total_insight }]
  #       inner_index += 1
  #     end
  #     column_index +=1
  #   end
  #   row_index +=1
  # end
  # pp result
  
  result = {}
  
  nds.each do |director|
    result[director[:name]] = 0
    director[:movies].each do |movie|
      result[director[:name]] += movie[:worldwide_gross]
    end
  end
  
  result
end

