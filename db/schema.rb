# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_08_12_035837) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bubblecups", force: :cascade do |t|
    t.integer "year"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_instances", force: :cascade do |t|
    t.bigint "event_id", null: false
    t.bigint "team_a_id", null: false
    t.bigint "team_b_id", null: false
    t.integer "team_a_score"
    t.integer "team_b_score"
    t.bigint "winning_team_id"
    t.boolean "is_tiebreaker"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_instances_on_event_id"
    t.index ["team_a_id"], name: "index_event_instances_on_team_a_id"
    t.index ["team_b_id"], name: "index_event_instances_on_team_b_id"
    t.index ["winning_team_id"], name: "index_event_instances_on_winning_team_id"
  end

  create_table "eventinstances_players", id: false, force: :cascade do |t|
    t.bigint "player_id"
    t.bigint "event_instances_id"
    t.index ["event_instances_id"], name: "index_eventinstances_players_on_event_instances_id"
    t.index ["player_id"], name: "index_eventinstances_players_on_player_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.integer "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players_teams", id: false, force: :cascade do |t|
    t.bigint "team_id"
    t.bigint "player_id"
    t.index ["player_id"], name: "index_players_teams_on_player_id"
    t.index ["team_id"], name: "index_players_teams_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.bigint "captain_id", null: false
    t.bigint "bubble_cup_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bubble_cup_id"], name: "index_teams_on_bubble_cup_id"
    t.index ["captain_id"], name: "index_teams_on_captain_id"
  end

  create_table "teams_players", id: false, force: :cascade do |t|
    t.bigint "team_id"
    t.bigint "player_id"
    t.index ["player_id"], name: "index_teams_players_on_player_id"
    t.index ["team_id"], name: "index_teams_players_on_team_id"
  end

  add_foreign_key "event_instances", "events"
  add_foreign_key "event_instances", "teams", column: "team_a_id"
  add_foreign_key "event_instances", "teams", column: "team_b_id"
  add_foreign_key "event_instances", "teams", column: "winning_team_id"
  add_foreign_key "teams", "bubblecups", column: "bubble_cup_id"
  add_foreign_key "teams", "players", column: "captain_id"
end
