class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :email))

    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    # Separate Past and Future Events
    @past_events = []
    @upcoming_events = []
    User.find(params[:id]).attended_events.each do |event|
      if event.date < Time.now
        @past_events << event.description
      else
        @upcoming_events << event.description
      end
    end
  end
end
