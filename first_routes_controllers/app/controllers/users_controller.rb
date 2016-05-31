require 'byebug'

class UsersController < ApplicationController
  def index
    @contact = Contact.find(params[:user_id])
    render json: @contact
    render json: User.all
  end

  def show
    render json: User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      render(json: @user.errors.full_messages,
        status: :unprocessable_entity)
    end
  end

  def destroy
    @user = User.find(params[:id])
    render json: @user
    @user.destroy
  end

  def update
    @user = User.find(params[:id])
    if User.update(params[:id], user_params)
      render json: @user
    else render(json: @user.errors.full_messages,
      status: :unprocessable_entity)
    end
  end

  private
  def user_params
    params.require(:users).permit(:username)
  end

end
