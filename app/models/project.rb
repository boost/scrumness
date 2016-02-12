class Project < ActiveRecord::Base
  belongs_to :user
  has_many :sprints

  def sprint_graph
    self.sprints.map {|sprint| [sprint.created_at.strftime("%d %b %y"),
      sprint.role_rating, sprint.role_rating(false), 
      sprint.rating, sprint.reviews.count.to_s,
      sprint.description]}	
  end

  def velocity_graph
    self.sprints.map {|sprint| [sprint.created_at.strftime("%d %b %y"),
      sprint.velocity_planned, sprint.velocity_acheived]
      }		
  end

  def sprint_velocity_graph
    self.sprints.map {|sprint| [sprint.created_at.strftime("%d %b %y"),
      sprint.rating, (sprint.velocity_acheived - sprint.velocity_planned)]}
  end

  def current_token
    self.sprints.last.voting_done? ? nil : self.sprints.last.token
  end
end
