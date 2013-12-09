class RenameLDescByHand < ActiveRecord::Migration
  def up
  	rename_column :posts, :LongDescription, :l_desc
  end

  def down
  	rename_column :posts, :LongDescription, :l_desc
  end
end
