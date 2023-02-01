class ApplicationController < ActionController::Base
    before_action :configure_new_params, if: :devise_controller?

    protected
      def configure_new_params
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation)}
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password)}
      end
end
