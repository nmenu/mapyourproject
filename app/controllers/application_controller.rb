class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  include ActiveStorage::SetCurrent

  private

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:company_name, :descriptions, :adress, :zip_code, :city, :website, :avatar])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:company_name, :descriptions, :adress, :zip_code, :city, :website, :avatar])
  end
end
