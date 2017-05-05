class Cost < ApplicationRecord
	belongs_to :level1
	belongs_to :level2
	belongs_to :level3
end
