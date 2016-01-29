class AddVelocityToSprint < ActiveRecord::Migration
  def change
  	add_column :sprints, :velocity_planned, :integer, default: 0
  	add_column :sprints, :velocity_acheived, :integer, default: 0
  end
end
