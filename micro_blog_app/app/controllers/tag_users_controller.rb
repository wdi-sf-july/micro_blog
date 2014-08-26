class TagUsersController < ApplicationController
  
  def show
    @user = User.find_by_id(params[:user_id])
    @tag = Tag.find(params[:id])
    if @user && @tag
      @posts = @tag.posts.where(user_id: params[:user_id])
    else
      redirect_to users_path
    end
  end
end
