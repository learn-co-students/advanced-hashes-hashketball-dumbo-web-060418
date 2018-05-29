# Write your code here!
require 'pry'

def game_hash
  game_hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      }
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        "Bismak Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        "DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        "Brendan Haywood" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      }
    }
  }
end

def num_points_scored(player_name)
  points_scored = 0
  game_hash.each do |team, data|
    game_hash[team][:players].each do |name, detail|
      if player_name == name
        points_scored = game_hash[team][:players][player_name][:points]
      end
    end
  end
  points_scored
end

def shoe_size(player_name)
  shoe_size = 0
  game_hash.each do |team, data|
    game_hash[team][:players].each do |name, detail|
      if player_name == name
        shoe_size = game_hash[team][:players][player_name][:shoe]
      end
    end
  end
  shoe_size
end

def team_colors(team_name)
  game_hash.each do |team, data|
    if game_hash[team][:team_name] == team_name
      return game_hash[team][:colors]
    end
  end
end

def team_names
  team_names = []
  game_hash.each do |team, data|
    team_names << game_hash[team][:team_name]
  end
  return team_names
end

def player_numbers(team_name)
  numbers = []
  game_hash.each do |team, data|
    if game_hash[team][:team_name] == team_name
        game_hash[team][:players].each do |player, data|
          game_hash[team][:players][player].each do |key, value|
            if key == :number
              numbers << value
            end
          end
        end
      end
    end
  return numbers
end

def player_stats(player_name)
  player_stats_hash = {}
  game_hash.each do |team, data|
    game_hash[team][:players].each do |player, data|
      if player == player_name
        player_stats_hash = game_hash[team][:players][player]
      end
    end
  end
  return player_stats_hash
end

def big_shoe_rebounds
  biggest = 0
  player_w_biggest_shoe = 0
  player_rebounds = 0
  game_hash.each do |team, val|
    game_hash[team][:players].each do |player, data|
        game_hash[team][:players][player].each do |datum, val|
          if datum == :shoe && val > biggest
            biggest = val
            player_w_biggest_shoe = player
          end
        end
        if player == player_w_biggest_shoe
          player_rebounds = game_hash[team][:players][player][:rebounds]
      end
    end
  end
  player_rebounds
end
