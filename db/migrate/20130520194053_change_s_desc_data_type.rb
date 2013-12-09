class ChangeSDescDataType < ActiveRecord::Migration
  def up
  	change_column :posts, :s_desc, :string
  end

  def down
  	change_column :posts, :s_desc, :text
  end
end
