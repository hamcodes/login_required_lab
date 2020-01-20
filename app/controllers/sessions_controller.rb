class SessionsController < ApplicationController
  

  def new

  end

  def create
    session[:name] = params[:name]
    if session[:name].empty? || session[:name].nil?
      redirect_to "/sessions/new"
    else
      redirect_to "/n"
    end
  end

  def destroy
    session.destroy
    redirect_to "/sessions/new"
  end
end