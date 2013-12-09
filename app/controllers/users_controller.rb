class UsersController < InheritedResources::Base
	def change_vote
		@user = User.find(params[:id])
		@user.update_attributes(:vote => params[:vote], :votetime => Time.now)


		redirect_to :back
	end	
end
