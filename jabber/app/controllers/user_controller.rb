

class UserController < ApplicationController
  before_action :authenticate_user!, only: [:new, :show, :create, :update, :edit, :delete, :index]

  def index
    my_users = Array.new
    my_jabbers = Array.new

    my_users << current_user
    my_jabbers << Jabber.where(user_id: current_user.id)

    current_user.friends.each do |friend|
      my_users << friend
      my_jabbers << Jabber.where(user_id: friend.id)
    end

    my_jabbers.flatten!

    @new_friends = User.all - my_users
    @all_my_jabbers = my_jabbers.sort_by(&:created_at).reverse
    @jabber = Jabber.new
  end

  def show
  end

  def update
    if current_user.update(user_params)
      redirect_to show_user_path, notice: 'User profile successfuly updated'
    else
      render show
    end
  end


  def edit
    @user = current_user
  end

  private
  def user_params
    params.require(:user).permit(:name, :description, :location)
  end

end
