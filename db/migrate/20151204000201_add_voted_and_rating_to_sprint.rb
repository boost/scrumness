class AddVotedAndRatingToSprint < ActiveRecord::Migration
  def change
  	add_column :sprints, :voted, :integer, default: 0
  	add_column :sprints, :rateing, :integer, default: 0
  end
end
