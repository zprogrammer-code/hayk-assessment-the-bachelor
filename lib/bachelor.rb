require 'rubygems'
require 'nokogiri'
require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each {|key|
  if key["status"] == "winner"
   name = key["name"] 
end
return key["name"].split[0]
}
end

def get_contestant_name(data, occupation)
  data.each { |key, value|
  value.map { |people|
if people["occupation"] == occupation
  return people["name"]
end
}
  }
end

def count_contestants_by_hometown(data, hometown)
  name = []
  data.map { |key, value|
   value.select { |people| 
 if people["hometown"] == hometown
 name << people["name"] 
end
}
}
name.count
end
def get_occupation(data, hometown)
  data.each{ |key,value|
  value.map{ |people|
  if people["hometown"] == hometown
    return people["occupation"]
  end
 }
}
end

def get_average_age_for_season(data, season)
  ages = []
data[season].map{ |people|
ages << people["age"]
}
integer_ages = ages.map{ |age|
age.to_i
}
total_of_ages = integer_ages.reduce(:+)
(total_of_ages.to_f / data[season].length).round
end
#def fierceness_sum(beyonceHash)
  #beyonceHash[:hits].reduce(0){ |sum, song|
  #sum += song[:fierceness]
 # }
  #end
  #def average_fierceness_value(beyonceHash)
   # (fierceness_sum(beyonceHash).to_f / hash[:hints].length).round