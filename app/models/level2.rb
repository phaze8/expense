class Level2 < ApplicationRecord
	has_many :costs
	belongs_to :level1
end
