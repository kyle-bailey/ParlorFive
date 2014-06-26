class Work < ActiveRecord::Base
	belongs_to :user
	has_one :image, :dependent => :destroy
	validates :title, :work_type, presence: true
	accepts_nested_attributes_for :image
end
