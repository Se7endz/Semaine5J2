class AddIndexToEvent < ActiveRecord::Migration[5.2]
  def change
  	add_reference :events, :user, foreign_key: true
  end
end
