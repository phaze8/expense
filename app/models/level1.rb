class Level1 < ApplicationRecord
	has_many :costs
	has_many :level2s
end
