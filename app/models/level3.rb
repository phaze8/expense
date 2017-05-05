class Level3 < ApplicationRecord
	belongs_to :level2
	has_many :costs
end
