class AuthenticationController < ApplicationController
  # before_action :authorize_request, except: %i[login]

  def login
    if @user = User.find_by(email: params[:email])
      if @user&.authenticate(params[:password])
        @token = JsonWebToken.encode(user_id: @user.id)
      else
        render json: { error: 'Unauthorized' }, status: :unauthorized
      end
    else
      render json: { error: 'Email not found' }, status: :unauthorized
    end
  end

  private

  def login_params
    params.permit(:email, :password)
  end
end
