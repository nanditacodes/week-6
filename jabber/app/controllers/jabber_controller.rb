class JabberController < ApplicationController
  before_action :set_jabber, only: [:index]

  def index
    @jabber = Jabber.new
    redirect_to root_path
  end

  def new
  end

  def create
    @jabber = current_user.jabbers.build(jabber_params)
    if @jabber.save
      redirect_to list_path
    end
  end

  def show
  end

  private
  def set_jabber
    @jabbers = current_user.jabbers.order(created_at: :desc) if user_signed_in?
  end

  def jabber_params
    params.require(:jabber).permit(:message)
  end
end
