def game_hash
  basket_ball_team ={
    :home => {
      :team_name => "Brooklyn Nets", 
      :colors => ["Black", "White"], 
      :players => {
        :player1 => {
          :name =>  "Alan Anderson",
          :player_number => "0",
          :shoe_size => "16",
          :stats => {
    				:points => "22",
    				:rebounds =>  "12",
    				:assists => "12",
    				:steals => "3",
    				:blocks => "1",
    				:slam_dunks => "1"}},
        :player2 => {
          :name => "Reggie Evans",
          :number => "30",
          :shoe_size => "14",
          :stats => {
            :points => "12",
            :rebounds =>  "12",
            :assists => "12",
            :steals => "12",
            :blocks => "12",
            :slam_dunks => "7"
        }},
        :player3 => {
          :name => "Brook Lopez",
          :number => "11",
          :shoe_size => "17",
          :stats => {
            :points => "17",
            :rebounds =>  "19",
            :assists => "10",
            :steals => "3",
            :blocks => "1",
            :slam_dunks => "15"
        }},
        :player4 => {
          :name => "Mason Plumlee",
          :number => "1",
          :shoe_size => "19",
          :stats => {
            :points => "26",
            :rebounds =>  "12",
            :assists => "6",
            :steals => "3",
            :blocks => "8",
            :slam_dunks => "5"
        }},
        :player5 => {
          :name => "Jason Terry",
          :number => "31",
          :shoe_size => "15",
          :stats => {
            :points => "19",
            :rebounds =>  "2",
            :assists => "2",
            :steals => "4",
            :blocks => "11",
            :slam_dunks => "1"
        }},
      }
    },
  
    :away => {
      :team_names => "Charlotte Hornets", 
      :colors => ["Turquoise, Purple"], 
      :players => { 
        :player1 => {
          :name => "Jeff Adrien",
          :number => "4",
          :shoe_size => "18",
          :stats => {
            :num_points_scored => "10",
            :rebounds =>  "1",
            :assists => "1",
            :steals => "2",
            :blocks => "7",
            :slam_dunks => "2"}},
        :player2 => {
          :name => "Bismak Biyombo",
          :number => "0",
          :shoe_size => "16",
          :stats => {
            :points => "12",
            :rebounds =>  "4",
            :assists => "7",
            :steals => "7",
            :blocks => "15",
            :slam_dunks => "10"
        }},
         :player3 => {
          :name => "DeSagna Diop",
          :number => "2",
          :shoe => "14",
          :stats => {
            :points => "24",
            :rebounds =>  "12",
            :assists => "12",
            :steals => "4",
            :blocks => "5",
            :slam_dunks => "5"
        }},
        :player4 => {
          :name => "Ben Gordon",
          :number => "8",
          :shoe => "15",
          :stats => {
            :points => "24",
            :rebounds =>  "3",
            :assists => "2",
            :steals => "1",
            :blocks => "1",
            :slam_dunks => "0"
        }},
         :player5 => {
          :name => "Brendan Haywood",
          :number => "33",
          :shoe => "15",
          :stats => {
            :points => "6",
            :rebounds =>  "12",
            :assists => "12",
            :steals => "22",
            :blocks => "5",
            :slam_dunks => "12"
              }}
}
}
}
end

def num_points_scored(player_name)
  game_hash.each do |location, team_data|
    player_hash = team_data[:players]
      player_hash.each do |details|
        if details[:name] == name
          details[:points]
end
end
end