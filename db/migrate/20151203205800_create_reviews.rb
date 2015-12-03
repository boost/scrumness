class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :sprint_id
      t.integer :score
      t.text :comment
      t.string :role

      t.timestamps
    end
  end
end
