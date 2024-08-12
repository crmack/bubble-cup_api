class CreatePlayersTeams < ActiveRecord::Migration[7.1]
  def change
    create_table :players_teams, id: false do |t|
      t.belongs_to :team
      t.belongs_to :player
    end
  end
end
