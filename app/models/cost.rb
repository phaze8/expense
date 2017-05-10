class Cost < ApplicationRecord
	belongs_to :level1, foreign_key: "level1_id"
	belongs_to :level2, foreign_key: "level2_id"
	belongs_to :level3, foreign_key: "level3_id"
	has_many :persons, :dependent => :destroy
	mount_uploader :image, ImageUploader
	validates :submitter, presence: true
	validates :level1_id, presence: true
	validates :level2_id, presence: true
	validates :level3_id, presence: true
	validates :amount, presence: true, numericality: true
	validates :expense_date, presence: true
end
