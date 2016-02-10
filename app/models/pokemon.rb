class Pokemon < ActiveRecord::Base
  has_many :waza, through: :pokemon_wazas
end
