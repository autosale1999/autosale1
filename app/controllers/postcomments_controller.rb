class PostcommentsController < ApplicationController
before_action :authenticate_user!
def create
params[:postcomment][:photo_id] = params[:photo_id]
params[:postcomment][:user_id] = current_user.id
@comment = Postcomment.create(postcomments_params)
if @comment.save
redirect_to photo_path(params[:photo_id])
else
	@comment.errors.full_messages.each do |msg|
		@msg=msg
end
flash[:notice] = "#{@msg}"
redirect_to photo_path(params[:photo_id])
end
end

private

def postcomments_params
params.require(:postcomment).permit(:user_id, :photo_id, :text)
end


end