class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!, :except => [:show, :index]
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
    devise_parameter_sanitizer.for(:sign_up) << :email
    devise_parameter_sanitizer.for(:sign_up) << :nome
    devise_parameter_sanitizer.for(:sign_up) << :sobrenome
    devise_parameter_sanitizer.for(:sign_up) << :data_de_nascimento
    devise_parameter_sanitizer.for(:account_update) << :pais
    devise_parameter_sanitizer.for(:account_update) << :email
    devise_parameter_sanitizer.for(:account_update) << :nome
    devise_parameter_sanitizer.for(:account_update) << :sobrenome
    devise_parameter_sanitizer.for(:account_update) << :data_de_nascimento
    devise_parameter_sanitizer.for(:account_update) << :foto
    devise_parameter_sanitizer.for(:account_update) << :sexo
    devise_parameter_sanitizer.for(:account_update) << :link
    devise_parameter_sanitizer.for(:account_update) << :descricao
  end
end
