class ChatsController < ApplicationController
	before_action :authenticate_user!

	def index
		
	end
	def show
		
	end
	def create
		chat = Chat.new message: params[:message], user_id: current_user.id
		if chat.save 
			ActionCable.server.broadcast(
			  "chat_channel",
			  {
			   message: chat.message,
			   user_id: chat.user.id
			  }
			)
		 	redirect_to json: { data: chat}
		else
			redirect_to root_url
	 	end
	end
 
end
