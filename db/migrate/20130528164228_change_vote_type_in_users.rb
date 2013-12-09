class ChangeVoteTypeInUsers < ActiveRecord::Migration
  def up
  	change_column :users, :vote, :Post
  end

  def down
  	change_column :users, :vote, :string
  end
end
