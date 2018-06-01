GAME = {
  :home => {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :players => {
      "Alan Anderson"=> {
        :number => 0,
        :shoe => 16,
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1
      }, 
      "Reggie Evans"=> {
        :number => 30,
        :shoe => 14,
        :points => 12,
        :rebounds => 12,
        :assists => 12,
        :steals => 12,
        :blocks => 12,
        :slam_dunks => 7
      }, 
      "Brook Lopez"=> {
        :number => 11,
        :shoe => 17,
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 15
      }, 
      "Mason Plumlee"=> {
        :number => 1,
        :shoe => 19,
        :points => 26,
        :rebounds => 12,
        :assists => 6,
        :steals => 3,
        :blocks => 8,
        :slam_dunks => 5,
      }, 
      "Jason Terry"=> {
        :number => 31,
        :shoe => 15,
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4,
        :blocks => 11,
        :slam_dunks => 1,
      }
    }
  },
  :away => {
    :team_name => "Charlotte Hornets",
    :colors => ["Turquoise", "Purple"],
    :players => {
      "Jeff Adrien"=> {
        :number => 4,
        :shoe => 18,
        :points => 10,
        :rebounds => 1,
        :assists => 1,
        :steals => 2,
        :blocks => 7,
        :slam_dunks => 2
      }, 
      "Bismak Biyombo"=> {
        :number => 0,
        :shoe => 16,
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 7,
        :blocks => 15,
        :slam_dunks => 10
      },
      "DeSagna Diop"=> {
        :number => 2,
        :shoe => 14,
        :points => 24,
        :rebounds => 12,
        :assists => 12,
        :steals => 4,
        :blocks => 5,
        :slam_dunks => 5
      },
      "Ben Gordon"=> {
        :number => 8,
        :shoe => 15,
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1,
        :blocks => 1,
        :slam_dunks => 0
      },
      "Brendan Haywood"=> {
        :number => 33,
        :shoe => 15,
        :points => 6,
        :rebounds => 12,
        :assists => 12,
        :steals => 22,
        :blocks => 5,
        :slam_dunks => 12
      }
    }
  }
}

def game_hash
  return GAME
end

def num_points_scored(player_name)
  top_level_hash = game_hash
  top_level_hash.each do |k, v|
    v.each do |key, value|
      if value.include?(player_name)
        current_team = top_level_hash[k][key]
        points_scored = current_team.fetch(player_name)[:points]
        return points_scored
      end
    end
  end
end

def shoe_size(player_name)
  top_level_hash = game_hash
  top_level_hash.each do |k, v|
    v.each do |key, value|
      if value.include?(player_name)
        current_team = top_level_hash[k][key]
        shoeSize = current_team.fetch(player_name)[:shoe]
        return shoeSize
      end
    end
  end
end

def team_colors(team_name)
  top_level_hash = game_hash
    top_level_hash.each do |k, v|
      v.each do |key, value|
        if value.include?(team_name)
          teamColors = top_level_hash[k][:colors]
          return teamColors
        end
      end
    end
end

def team_names
  top_level_hash = game_hash
  currentTeams = []
   top_level_hash.each do |k, v|
    currentTeams << top_level_hash[k][:team_name]
   end
   return currentTeams
end

def player_numbers(team)
  roster = []
  top_level_hash = game_hash
  top_level_hash.each do |homeAway,teamAttributes|
    if teamAttributes[:team_name] == team
      teamHash = teamAttributes[:players]
      teamHash.each do |playerName, stats|
        roster << stats[:number]
      end
    end
  end
  return roster
end

def player_stats(name)
  top_level_hash = game_hash
  top_level_hash.each do |k, v|
    v.each do |key, value|
      if value.include?(name)
        current_team = top_level_hash[k][key]
        allTheStats = current_team.fetch(name)
        return allTheStats
      end
    end
  end
end

def big_shoe_rebounds
  top_level_hash = game_hash
  numberOfRebounds = 0
  maxShoeSize = 0
  top_level_hash.each do |homeAway, teamAttributes|
    teamAttributes[:players].each do |player, stats|
      if stats[:shoe] > maxShoeSize
        maxShoeSize = stats[:shoe]
        numberOfRebounds = stats[:rebounds]
      end
    end
  end
  return numberOfRebounds
end  