class Sprint < ActiveRecord::Base
	belongs_to :project
	has_many :ratings
	has_one :token
end
