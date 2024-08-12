class CreateEventInstances < ActiveRecord::Migration[7.1]
  def change
    create_table :event_instances do |t|
      t.references :event, null: false, foreign_key: true
      t.references :team_a, null: false, foreign_key:  {to_table: :teams}
      t.references :team_b, null: false, foreign_key:  {to_table: :teams}
      t.integer :team_a_score
      t.integer :team_b_score
      t.references :winning_team, null: true, foreign_key: {to_table: :teams}
      t.boolean :is_tiebreaker

      t.timestamps
    end

    create_table :eventinstances_players, id: false do |t|
      t.belongs_to :player
      t.belongs_to :event_instances
    end
  end
end
