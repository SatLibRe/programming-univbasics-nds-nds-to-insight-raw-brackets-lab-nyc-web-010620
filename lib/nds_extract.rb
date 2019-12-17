$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

require "pry"


# def directors_totals(nds)
# row_index = 0
# total = 0 
# new_hash = {}

# while row_index < nds.length do 
#   new_hash[nds[row_index][:name]] = 0
#     element_index = 0
#     while element_index < nds[row_index][:movies].length 
#       new_hash[nds[row_index][:name]] += nds[row_index][:movies][element_index][:worldwide_gross]
#       element_index += 1 
#     end 
#   row_index += 1
# end 
# new_hash
# end

def directors_totals(nds)
  director_totals_hash = {}
     nds.each do |directors_data|
     	director_totals_hash[directors_data[:name]] = 0 
     		directors_data[:movies].each do |movies_data|
     	 		director_totals_hash[directors_data[:name]] += movies_data[:worldwide_gross]
      	end
    end 
    director_totals_hash
end 



 # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  #result = {
  #}
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
