class PokemonWaza < ActiveRecord::Base
  belongs_to :pokemon
  belongs_to :waza
end
