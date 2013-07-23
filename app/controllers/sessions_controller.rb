  class SessionsController < ApplicationController
  def new
  end

  def create
    subscriber = Subscriber.find_by(email: params[:session][:email].downcase)
    if subscriber && subscriber.authenticate(params[:session][:password])
      redirect_to subscriber
    else
      flash.now[:error] = "Invalid email/password combination"
      render 'new'
    end
  end

  def destroy
  end
end

