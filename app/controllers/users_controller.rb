class UsersController < ApplicationController
  def index
  	@customer = User.find_by(params[:user])
  end
end
