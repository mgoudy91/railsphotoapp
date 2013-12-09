class Post < ActiveRecord::Base
  attr_accessible :email, :l_desc, :name, :s_desc, :title, :photo

  has_attached_file :photo, :styles => { :large => "500x500>", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  scope :recent, order("created_at desc").limit(3)
end
