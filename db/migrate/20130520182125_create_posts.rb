class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :l_desc
      t.text :s_desc
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
