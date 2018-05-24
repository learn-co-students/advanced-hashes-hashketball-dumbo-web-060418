require 'pry'
def game_hash
  hsh =
  {
    home:
    {
      team_name:"Brooklyn Nets",
      colors:["Black","White"],
      players:
      {
        "Alan Anderson"=>
        {
          number:0,
          shoe:16,
          points:22,
          rebounds:12,
          assists:12,
          steals:3,
          blocks:1,
          slam_dunks:1
        },
        "Reggie Evans"=>
        {
          number:30,
          shoe:14,
          points:12,
          rebounds:12,
          assists:12,
          steals:12,
          blocks:12,
          slam_dunks:7
        },
        "Brook Lopez"=>
        {
          number:11,
          shoe:17,
          points:17,
          rebounds:19,
          assists:10,
          steals:3,
          blocks:1,
          slam_dunks:15
        },
        "Mason Plumlee"=>
        {
          number:1,
          shoe:19,
          points:26,
          rebounds:12,
          assists:6,
          steals:3,
          blocks:8,
          slam_dunks:5
        },
        "Jason Terry"=>
        {
          number:31,
          shoe:15,
          points:19,
          rebounds:2,
          assists:2,
          steals:4,
          blocks:11,
          slam_dunks:1
        }
      }
    },
    away:
    {
      team_name:"Charlotte Hornets",
      colors:["Turquoise","Purple"],
      players:
      {
        "Jeff Adrien"=>
        {
          number:4,
          shoe:18,
          points:10,
          rebounds:1,
          assists:1,
          steals:2,
          blocks:7,
          slam_dunks:2
        },
        "Bismak Biyombo"=>
        {
          number:0,
          shoe:16,
          points:12,
          rebounds:4,
          assists:7,
          steals:7,
          blocks:15,
          slam_dunks:10
        },
        "DeSagna Diop"=>
        {
          number:2,
          shoe:14,
          points:24,
          rebounds:12,
          assists:12,
          steals:4,
          blocks:5,
          slam_dunks:5
        },
        "Ben Gordon"=>
        {
          number:8,
          shoe:15,
          points:33,
          rebounds:3,
          assists:2,
          steals:1,
          blocks:1,
          slam_dunks:0
        },
        "Brendan Haywood"=>
        {
          number:33,
          shoe:15,
          points:6,
          rebounds:12,
          assists:12,
          steals:22,
          blocks:5,
          slam_dunks:12
        }
      }
    }
  }
end


def num_points_scored(player_name)
  points = nil
  game_hash.each do |location,team_data|
    team_data[:players].each do |attribute, data|
      if attribute == player_name
         points = data[:points]
      else
        "No player with that name pal"
      end
    end
  end
points
end

def shoe_size(player_name)
  points = nil
  game_hash.each do |location,team_data|
    team_data[:players].each do |attribute, data|
      if attribute == player_name
         points = data[:shoe]
      else
        "No player with that name pal"
      end
    end
  end
points
end

def team_colors(team)
  colors = []
  game_hash.each do |location,team_data|
    if team_data[:team_name] == team
      colors = team_data[:colors]
    end
  end
colors
end

def team_names
  teamNames =[]
  game_hash.each do |loc,team_data|
      teamNames << team_data[:team_name]
  end
  teamNames
end

def player_numbers(team)
  number = []
  game_hash.each do |location,team_data|
    if team_data[:team_name] == team
      team_data[:players].each do |attribute, data|
         number << data[:number]
      end
    else
    "No team with that name pal"
    end
  end
number
end

def player_stats(player_name)
  points ={}
  game_hash.each do |location,team_data|
    team_data[:players].each do |attribute, data|
      if attribute == player_name
         points = data
      else
        "No player with that name pal"
      end
    end
  end
points
end

def big_shoe_rebounds
  shoe = 0
  shoeRebounds = 0
  game_hash.each do |location,team_data|
    team_data[:players].each do |attribute, data|
      if shoe < data[:shoe]
        shoe = data[:shoe]
        shoeRebounds = data[:rebounds]
      end
    end
  end
shoeRebounds
end

def most_points_scored
  points=0
  player =""
  game_hash.each do |location,team_data|
    team_data[:players].each do |attribute, data|
      if points < data[:points]
        points = data[:points]
        player = attribute
      end
    end
  end
player
end

def winning_team
  pointsA = 0
  pointsB = 0
  game_hash.each do |location,team_data|
    team_data[:players].each do |attribute, data|
        if location.to_s=="home"
        pointsA += data[:points]
        else
        pointsB += data[:points]
        end
    end
  end
if pointsA > pointsB
  "Brooklyn Nets"
else
  "Charlotte Hornets"
end
end


def player_with_longest_name
  nameLength =0
  player =""
  game_hash.each do |location,team_data|
    team_data[:players].each do |attribute, data|
      if nameLength < attribute.size
        player = attribute
      end
    end
  end
player
end

def long_name_steals_a_ton?
  steals=0
  player =""
  game_hash.each do |location,team_data|
    team_data[:players].each do |attribute, data|
      if steals < data[:steals]
        steals = data[:steals]
        player = attribute
      end
    end
  end
if player == player_with_longest_name()
  return true
else
  false
end
end




