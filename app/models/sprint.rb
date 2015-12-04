class Sprint < ActiveRecord::Base
  belongs_to :project
  has_many :reviews
  # has_one :token

  before_create :generate_token

  # def incremented_voted
  #   self.update_attributes(voted: self.voted += 1)
  # end

 def role_rating(po = true)
  reviews = self.reviews.where(role: po ? 'yes' : 'no')
  unless reviews.empty?
    reviews.map {|review| review.score}.reduce(:+) / reviews.count
  else
    0
  end
 end

  def generate_token
    while true
      alphanumeric = (0...3).map { [('a'..'z').to_a[rand(26)], (0..9).to_a[rand(10)]] }.join.upcase
      break if Sprint.where(["token = ? and votes = ?", alphanumeric, 0]).empty?
    end
    
    self.token = alphanumeric
  end
end
