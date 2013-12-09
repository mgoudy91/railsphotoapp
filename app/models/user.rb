class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :token_authenticatable, :confirmable,
	# :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	     :recoverable, :rememberable, :trackable, :validatable

	# Setup accessible (or protected) attributes for your model
	attr_accessible :email, :password, :password_confirmation, :remember_me, :vote, :votetime
	# attr_accessible :title, :body

 	def getVote(number)
	  	p = Post.find(number)
	  	p
	end
	
	def getVoteTitle(number)
	  	p = Post.find(number)
	  	p.title
	end
end