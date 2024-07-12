require_relative 'config/environment'



Player.left_outer_joins(:team).where(team_id: 1)   #Retrieve all players of a specific team.
Player.left_outer_joins(:team).where("age > 30") #Retrieve players older than a certain age.
# List all players and their corresponding teams.
Player.create(name: "Player 32", age: 26, position: "defender", team_id: 11) #Insert a new player into a team.
Player.find_by(name: 'Player 1').update(position: 'Defender') #Update a player's position.
Player.find_by(name: 'Player 30').destroy #Delete a player by their name.

Player.group(:team_id).count #Get the count of players in each team including teams without any players.

