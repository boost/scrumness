class DeleteFields < ActiveRecord::Migration
  def change
  	remove_column :sprints, :voted
  	remove_column :sprints, :rateing  	
  end
end
