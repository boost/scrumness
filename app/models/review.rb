class Review < ActiveRecord::Base
	belongs_to :sprint

	after_create :update_sprint_rating

	def update_sprint_rating
		sum = self.sprint.reviews.map {|review| review.score}.reduce(:+)
		self.sprint.update_attributes(rating: sum/self.sprint.reviews.count)
	end
end
