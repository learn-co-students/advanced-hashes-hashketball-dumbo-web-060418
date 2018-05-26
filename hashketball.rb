# Write your code here!
def game_hash
  {
    :home => {
        :team_name => "Brooklyn Nets",
        :colors => ["Black", "White"],
        :players => {
                    "Alan Anderson" => {
            :number => 0,  
            :shoe => 16,
            :points => 22,
            :rebounds => 12,
            :assists => 12,
            :steals => 3,
            :blocks => 1,
            :slam_dunks => 1
                    },
                    "Reggie Evans" => {
            :number => 30,
            :shoe => 14,
            :points => 12,
            :rebounds => 12,
            :assists => 12,
            :steals => 12,
            :blocks => 12,
            :slam_dunks => 7
                    },
                    "Brook Lopez" => {
            :number => 11,
            :shoe => 17,
            :points => 17,
            :rebounds => 19,
            :assists => 10,
            :steals => 3,
            :blocks => 1,
            :slam_dunks => 15
                    },
                    "Mason Plumlee" => {
            :number => 1,
            :shoe => 19,
            :points => 26,
            :rebounds => 12,
            :assists => 6,
            :steals => 3,
            :blocks => 8,
            :slam_dunks => 5
                    },
                    "Jason Terry" => {
            :number => 31,
            :shoe => 15,
            :points => 19,
            :rebounds => 2,
            :assists => 2,
            :steals => 4,
            :blocks => 11,
            :slam_dunks => 1
                    }
        }
        },
    
    
    :away => {
        :team_name => "Charlotte Hornets",
        :colors => ["Turquoise", "Purple"],
        :players => {
                    "Jeff Adrien" => {
            :number => 4,
            :shoe => 18,
            :points => 10,
            :rebounds => 1,
            :assists => 1,
            :steals => 2,
            :blocks => 7,
            :slam_dunks => 2
                    },
                    "Bismak Biyombo" => {
            :number => 0,
            :shoe => 16,
            :points => 12,
            :rebounds => 4,
            :assists => 7,
            :steals => 7,
            :blocks => 15,
            :slam_dunks => 10
                    }, 
                    "DeSagna Diop" => {
            :number => 2,
            :shoe => 14,
            :points => 24,
            :rebounds => 12,
            :assists => 12,
            :steals => 4,
            :blocks => 5,
            :slam_dunks => 5
                    },
                    "Ben Gordon" => {
            :number => 8,
            :shoe => 15, 
            :points => 33,
            :rebounds => 3,
            :assists => 2,
            :steals => 1,
            :blocks => 1,
            :slam_dunks => 0
                    },
                    "Brendan Haywood" => {
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
end 

def num_points_scored(play_name)
  points = 0
  game_hash.each do |home_away_key, team_atr| 
  team_atr.each do |team_atr_key, atr_data|
    if team_atr_key == :players
       atr_data.each do |atr_data_key, play_stat|
      if atr_data_key.to_s == play_name
         play_stat.each do |play_stat_key, stat|
          if play_stat_key == :points
            points = stat
  end
end
  end
  end
end
end
end
points
end

def shoe_size(play_name)
   shoe = 0
  game_hash.each do |home_away_key, team_atr| 
  team_atr.each do |team_atr_key, atr_data|
    if team_atr_key == :players
       atr_data.each do |atr_data_key, play_stat|
      if atr_data_key.to_s == play_name
         play_stat.each do |play_stat_key, stat|
          if play_stat_key == :shoe
            shoe = stat
              end
end
  end
  end
end
end
end
shoe
end

def team_colors(team_name) 
  the_colors = []
 game_hash.each do |home_away_key, team_atr|
   team_atr.each do |team_atr_key, data|
     if data == team_name
       the_colors = game_hash[home_away_key][:colors]
end
     end 
     end
     the_colors
end 

def team_names
the_team_names = []
game_hash.each do |home_away_key, team_atr|
team_atr.each do |team_atr_key, data|
  if team_atr_key == :team_name
    the_team_names << data
  end
  end
end
  the_team_names
end

def player_numbers(team_name)
  jersey_numbers = []
  the_team_name = []
  game_hash.each do |home_away_key, team_atr|
    team_atr.each do |team_atr_key, data|
     if data == team_name
       game_hash[home_away_key][:players].each do |player, att|
         att.each do |att_key, num|
           if att_key == :number
             jersey_numbers << num 
       end
     end
    end
  end
end
end
  jersey_numbers
end

def player_stats(player_name)
  player_hash = {}
  
  game_hash.each do |home_away_key, team_attr|
    team_attr.each do |team_attr_key, data|
      if team_attr_key == :players
      data.each do |data_key, stat|
      if data_key == player_name
        stat.each do |stat_key, num|
          player_hash[stat_key] = num
    end
    end
    end
    end
    end
  end
  player_hash
end

def big_shoe_rebounds
  num_rebounds = nil 
  max_shoe_size = nil
  game_hash.each do |home_away_key, team_attr|
    team_attr.each do |team_attr_key, data|
      if team_attr_key == :players
        data.each do |data_key, stat|
         stat.each do |stat_key, num|
           if stat_key == :shoe
             if !max_shoe_size
               max_shoe_size = num 
               num_rebounds = game_hash[home_away_key][team_attr_key][data_key][:rebounds]
               elsif max_shoe_size < num 
                 max_shoe_size = num 
                 num_rebounds = game_hash[home_away_key][team_attr_key][data_key][:rebounds]
        else
          num_rebounds
        end
        end
        end
        end
      end
      end
    end
    num_rebounds
end











