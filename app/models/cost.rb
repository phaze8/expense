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
	validate :image_size_validation

	private

		def image_size_validation
			errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
		end
end
