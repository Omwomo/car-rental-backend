class Api::V1::UsersController < ApplicationController
  # NOTE: Bhushan you will add authentication logic here

  # GET /api/v1/users
  def index
    @users = User.all

    render json: {
      status: { code: 200, message: 'Users list retrieved successfully.' },
      data: @users.map { |user| UserSerializer.new(user).serializable_hash[:data][:attributes] }
    }, status: :ok
  end

  # GET /api/v1/users/:username
  def show
    @user = User.find_by(username: params[:username])

    if @user
      render json: {
        status: { code: 200, message: 'User information retrieved successfully.' },
        data: UserSerializer.new(@user).serializable_hash[:data][:attributes]
      }, status: :ok
    else
      render json: {
        status: 404,
        message: 'User not found.'
      }, status: :not_found
    end
  end
end
