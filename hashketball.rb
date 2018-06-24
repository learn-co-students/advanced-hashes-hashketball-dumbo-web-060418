# Write your code here!


require 'pry'

def game_hash
	new_hash = {
		:home => {},
		:away => {}
	}

	new_hash.each do |home_or_away, data|
		new_hash[home_or_away] = {
			:team_name => "",
			:colors => [],
			:players => []
		}
	end 

	new_hash[:home][:team_name] = "Brooklyn Nets"
	new_hash[:away][:team_name] = "Charlotte Hornets"
	new_hash[:home][:colors] = ["Black", "White"]
	new_hash[:away][:colors] = ["Turquoise", "Purple"]

	player_names = ["Alan Anderson", "Reggie Evans", "Brook Lopez", "Mason Plumlee", "Jason Terry"]
	player_numbers = [0, 30, 11, 1, 31]
	player_shoe = [16, 14, 17, 19, 15]
	player_points = [22, 12, 17, 26, 19]
	player_rebounds = [12, 12, 19, 12, 2]
	player_assists = [12, 12, 10, 6, 2]
	player_steals = [3, 12, 3, 3, 4]
	player_blocks = [1, 12, 1, 8, 11]
	player_slams = [1, 7, 15, 5, 1]

	away_names = ["Jeff Adrien", "Bismak Biyombo", "DeSagna Diop", "Ben Gordon", "Brendan Haywood"]
	away_numbers = [4, 0, 2, 8, 33]
	away_shoe = [18, 16, 14, 15, 15]
	away_points = [10, 12, 24, 33, 6]
	away_rebounds = [1, 4, 12, 3, 12]
	away_assists = [1, 7, 12, 2, 12]
	away_steals = [2, 7, 4, 1, 22]
	away_blocks = [7, 15, 5, 1, 5]
	away_slams = [2, 10, 5, 0, 12]

	for i in 0...5
		new_hash[:home][:players][i] = {
			player_names[i] => {
				:number => player_numbers[i],
				:shoe => player_shoe[i],
				:points => player_points[i],
				:rebounds => player_rebounds[i],
				:assists => player_assists[i],
				:steals => player_steals[i],
				:blocks => player_blocks[i],
				:slam_dunks => player_slams[i]
			}
		}
	end 

	for i in 0...5
		new_hash[:away][:players][i] = {
			away_names[i] => {
				:number => away_numbers[i],
				:shoe => away_shoe[i],
				:points => away_points[i],
				:rebounds => away_rebounds[i],
				:assists => away_assists[i],
				:steals => away_steals[i],
				:blocks => away_blocks[i],
				:slam_dunks => away_slams[i]
			}
		}
	end
	new_hash
end



def num_points_scored(player)
	score = nil
	my_hash = game_hash
	my_hash.each do |home_or_away, data|
		data.each do |attribute, more_data|
			if attribute == :players
				more_data.each do |person| 
					person.each do |name, stats|
						score = stats[:points] if name == player
					end
				end
			end
		end
	end
	score
end

# their way
# def num_points_scored(name)
#   player = find_the_player(name)
#   player.fetch(:points)
# end




def shoe_size(player)
	shoe_size = nil
	my_hash = game_hash
	my_hash.each do |home_or_away, data|
		data.each do |attribute, more_data|
			if attribute == :players
				more_data.each do |person|
					person.each do |name, stats|
						shoe_size = stats[:shoe] if name == player
					end
				end 
			end
		end
	end 
	shoe_size
end

# def shoe_size(name)
#   player = find_the_player(name)
#   player.fetch(:shoe)
# end

def team_colors(team_name)
	right_team = nil
	game_hash.each do |home_or_away, data|
		data.each do |attribute, value|
			if attribute == :team_name && value == team_name
				right_team = home_or_away
			end
		end
	end
	return game_hash[right_team][:colors]
end

# def team_colors(team_name)
#   team = find_the_team(team_name)
#   team.fetch(:colors)
# end

def team_names
	new_hash = game_hash
	new_hash.map{|key, value| new_hash[key][:team_name]}
end

# def team_names
#   teams.map{|t| t.fetch(:team_name)}
# end


def player_numbers(team_name)
	my_array = []
	my_hash = game_hash
	my_hash.each do |home_or_away, data|
		data.each do |key, value|
			if key == :team_name && value == team_name
				my_hash[home_or_away][:players].each do |player|
					player.each do |name, stats|
						stats.each do |stat, val|
							if stat == :number 
								my_array << val
							end 
						end
					end
				end 
			end
		end
	end
	my_array
end

# def player_numbers(team_name)
#   find_the_team(team_name)[:players].map{ |player_name, stats| stats[:number] }
# end


def player_stats(player_name)
	right_stats = nil
	my_hash = game_hash
	my_hash.each do |home_or_away, data|
		data.each do |attribute, more_data|
			if attribute == :players
				more_data.each do |player|
					player.find do |name, stats|
						if name == player_name
							right_stats = stats
						end
					end
				end
			end
		end
	end 
	right_stats
end

# def player_stats(player_name)
#   find_the_player(player_name)
# end


def big_shoe_rebounds
	biggest_shoes_player = nil
	shoe_size_tracker = 0
	rebounds_stat = nil
	game_hash.each do |home_or_away, data|
		data.each do |attribute, more_data|
			if attribute == :players
				more_data.each do |player|
					player.each do |name, stats|
						stats.each do |stat, val|
							if stat == :shoe
								if !biggest_shoes_player || val > shoe_size_tracker
									shoe_size_tracker = val
									biggest_shoes_player = name
								end
							end
						end
						rebounds_stat = stats[:rebounds]
					end
				end
			end
		end
	end
	rebounds_stat
end


# def big_shoe_rebounds
#   player_biggest_shoe_size.fetch(:rebounds)
# end

# helpers
# def teams
#   game_hash.values
# end

# def players
#   game_hash[:home][:players].merge(game_hash[:away][:players])
# # or concat
# end

# def find_the_team(team_name)
#   teams.find {|team| team.fetch(:team_name) == team_name}
# end

# def find_the_player(name)
#   players.fetch(name)
# end

# def player_biggest_shoe_size
#   players.max_by{|player, stats| stats.fetch(:shoe)}[1]
# end



