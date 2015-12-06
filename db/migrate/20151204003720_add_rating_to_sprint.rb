class AddRatingToSprint < ActiveRecord::Migration
  def change
  	add_column :sprints, :rating, :float, default: 0.0
  end
end
