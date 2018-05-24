def game_hash
  game =
  {
  :home=>
  {
    :team_name=>"Brooklyn Nets",
    :colors=>["Black", "White"],
    :players=>
    {
    "Alan Anderson"=>
    {
      :number=>0,
      :shoe=>16,
      :points=>22,
      :rebounds=>12,
      :assists=>12,
      :steals=>3,
      :blocks=>1,
      :slam_dunks=>1
    },
    "Reggie Evans"=>
    {
      :number=>30,
      :shoe=>14,
      :points=>12,
      :rebounds=>12,
      :assists=>12,
      :steals=>12,
      :blocks=>12,
      :slam_dunks=>7
    },
    "Brook Lopez"=>
    {
      :number=>11,
      :shoe=>17,
      :points=>17,
      :rebounds=>19,
      :assists=>10,
      :steals=>3,
      :blocks=>1,
      :slam_dunks=>15
    },
    "Mason Plumlee"=>
    {
      :number=>1,
      :shoe=>19,
      :points=>26,
      :rebounds=>12,
      :assists=>6,
      :steals=>3,
      :blocks=>8,
      :slam_dunks=>5
    },
    "Jason Terry"=>
    {
      :number=>31,
      :shoe=>15,
      :points=>19,
      :rebounds=>2,
      :assists=>2,
      :steals=>4,
      :blocks=>11,
      :slam_dunks=>1
      }
    }
  },
  :away =>
  {
    :team_name=>"Charlotte Hornets",
    :colors=>["Turquoise", "Purple"],
    :players=>
    {
      "Jeff Adrien"=>{
        :number=>4,
        :shoe=>18,
        :points=>10,
        :rebounds=>1,
        :assists=>1,
        :steals=>2,
        :blocks=>7,
        :slam_dunks=>2
      },
      "Bismak Biyombo"=>
      {
        :number=>0,
        :shoe=>16,
        :points=>12,
        :rebounds=>4,
        :assists=>7,
        :steals=>7,
        :blocks=>15,
        :slam_dunks=>10
      },
      "DeSagna Diop"=>
      {
        :number=>2,
        :shoe=>14,
        :points=>24,
        :rebounds=>12,
        :assists=>12,
        :steals=>4,
        :blocks=>5,
        :slam_dunks=>5
      },
      "Ben Gordon"=>
      {
        :number=>8,
        :shoe=>15,
        :points=>33,
        :rebounds=>3,
        :assists =>2,
        :steals=>1,
        :blocks=>1,
        :slam_dunks=>0
      },
      "Brendan Haywood"=>
      {
        :number=>33,
        :shoe=>15,
        :points=>6,
        :rebounds=>12,
        :assists=>12,
        :steals=>22,
        :blocks=>5,
        :slam_dunks=>12
      }
    }
  }
}
end

def num_points_scored(playerName)
game_hash.each do |team, attributes|
attributes.each do |attribute, detail|
if attribute == :players
detail.each do |name, details|
if playerName == name
details.each do |stat, number|
if stat == :points
return number.to_i
end
end
end
end
end
end
end
end

def shoe_size(playerName)
  game_hash.each do |team, attributes|
  attributes.each do |attribute, detail|
  if attribute == :players
  detail.each do |name, details|
  if playerName == name
  details.each do |stat, number|
  if stat == :shoe
  return number.to_i
  end
  end
  end
  end
  end
  end
  end
  end

def team_colors(teamName)
if game_hash[:away][:team_name] == teamName
  return game_hash[:away][:colors]
else
  return game_hash[:home][:colors]
end
end

def team_names
names = []
names << game_hash[:away][:team_name]
names << game_hash[:home][:team_name]
return names
end

def player_numbers(teamName)
numbers = []
  if game_hash[:away][:team_name] == teamName
   game_hash[:away][:players].each do |name, stats|
     stats.each do |detail, number|
       if detail == :number
         numbers << number
end
end
end
else
   game_hash[:home][:players].each do |name, stats|
     stats.each do |detail, number|
       if detail == :number
         numbers << number
end
end
end
end
return numbers
end

def player_stats(playerName)
  game_hash.each do |team, attributes|
  attributes.each do |attribute, detail|
      if attribute == :players
  detail.each do |name, details|
   if name == playerName
     return details
end
end
end
end
end
end

require "pry"

def big_shoe_rebounds
numbers = []
game_hash.each do |team, attributes|
attributes.each do |attribute, detail|
    if attribute == :players
detail.each do |name, details|
details.each do |x, y|
  if x == :shoe
    numbers << y
end
end
end
end
end
end
numbers.sort!
game_hash.each do |team, attributes|
attributes.each do |attribute, detail|
    if attribute == :players
detail.each do |name, details|
details.each do |x, y|
  if x == :shoe && y == numbers.last
  return game_hash[team.to_sym][:players][name][:rebounds]
  end
  end
  end
  end
  end
  end
end
