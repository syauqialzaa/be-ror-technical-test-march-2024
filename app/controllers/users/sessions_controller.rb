class Users::SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params, only: [:create]

  protected
    def configure_sign_in_params
      devise_parameter_sanitizer.permit(:sign_in, keys: [:username, :password])
    end

    def sign_in_params
      params.permit(:username, :password)
    end
end
