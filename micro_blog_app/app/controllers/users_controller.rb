class UsersController < ApplicationController
  before_action :find_user, :except => [:index, :new, :create]
  def index
    @users = User.all
  end

  def show
    @posts = @user.posts
    @pages = @user.pages
    @tags = @user.tags.uniq {|tag| tag.name}
  end
  
  def new
    @user = User.new
  end

  def edit
  end

  def create
    user = User.new(user_params)
    if user.save
      redirect_to user_path(user.id)
    else
      redirect_to new_user_path
    end
  end

  def update
    unless @user.update_attributes(user_params)
      redirect_to edit_user_path(@user)
    else
      redirect_to user_path @user.id
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end
  private
    def find_user
      id = params[:id]
      @user = User.find_by_id(id)
      redirect_to users_path unless @user
    end

    def user_params
      params.require(:user).permit(:email, :email_confirmation, :first_name, :last_name, :image_url)
    end

end
