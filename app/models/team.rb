class Team < ApplicationRecord
  belongs_to :captain, class_name: 'Player'
  belongs_to :bubble_cup, class_name: 'Bubblecup'
  has_and_belongs_to_many :players
end
