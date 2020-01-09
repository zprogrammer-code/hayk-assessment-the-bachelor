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
  data.each { |key, value|
value.map { |people|
 if people["hometown"] == hometown
 return people["name"]
end
}
}
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
 
  data.map{ |key, value|
value.each{ |people|

 people["age"]
}
}
end
