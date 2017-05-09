class Cost < ApplicationRecord
	belongs_to :level1
	belongs_to :level2
	belongs_to :level3
	has_many :persons, :dependent => :destroy
	mount_uploader :image, ImageUploader
	accepts_nested_attributes_for :persons, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true
end
