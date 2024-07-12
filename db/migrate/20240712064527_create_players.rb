class CreatePlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :players do |t|
      t.string :name, null: false
      t.integer :age
      t.string :position
      t.belongs_to :team, null: false
      t.timestamps
    end
  end
end


players.each do |player|
  "player_name: #{player.name} , Team_name: #{player.team_id}"
end