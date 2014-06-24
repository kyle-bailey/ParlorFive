class Work < ActiveRecord::Base
	belongs_to :user
	has_one :work
end
