class Sprint < ActiveRecord::Base
  belongs_to :project
  has_many :reviews
  # has_one :token

  before_create :generate_token

  def decrement_votes
    self.update_attributes(votes: self.votes-=1)
  end

  def generate_token
    while true
      alphanumeric = (0...3).map { [('a'..'z').to_a[rand(26)], (0..9).to_a[rand(10)]] }.join.upcase
      break if Sprint.where(["token = ? and votes = ?", alphanumeric, 0]).empty?
    end
    
    self.token = alphanumeric
  end
end
