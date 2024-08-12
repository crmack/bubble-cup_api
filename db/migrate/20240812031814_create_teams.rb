class CreateTeams < ActiveRecord::Migration[7.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.references :captain, null: false, foreign_key:  {to_table: :players}
      t.references :bubble_cup, null: false, foreign_key:  {to_table: :bubblecups}

      t.timestamps
    end

    create_table :teams_players, id: false do |t|
      t.belongs_to :team
      t.belongs_to :player
    end
  end
end
