chickens = ["John", "Paul", "Ringo", "George", "Jim"]

# for chicken in 42 #chickens
#   p chicken
# end

# chickens.each do |chicken|
#   shouting_chicken = chicken.upcase
#   p shouting_chicken
# end


##### a = ["a", "b", "c", "d"]
##### a.each{|x| print x, "  -- "}

# name_lengths = []
# chickens.each{ |chicken| name_lengths << chicken.length}
# p name_lengths


name_lengths = chickens.map { | chicken| chicken.length}
p name_lengths


chickens.each_with_index { |chicken, index| p "#{chicken} is at #{index}"}


p chickens.find {|chicken| chicken[0] == "G"}


p chickens.find_all { |chicken| chicken[0] == "J"}
p chickens.find_all { |chicken| chicken.include? "o"}



p chickens.reduce { |list, chicken | list + ", " + chicken}

numbers = [1,2,3,4,5,6,7,8]
p numbers.reduce{ |total, number| total + number}
