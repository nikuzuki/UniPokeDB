class Waza < ActiveRecord::Base
  has_many :pokemon, through: :pokemon_wazas
  has_one  :type
end
