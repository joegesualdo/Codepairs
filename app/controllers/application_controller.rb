class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?


  # ------------------------------------------------------------------------
  # Note: Unable to access current user using Devise's 'current_user' method
  #       so created my own accessing the warden session object.
  # ------------------------------------------------------------------------
  #TODO: Why aren't the built-in Devise methods working?  
  def current_user
    if session["warden.user.user.key"]
      @current_user ||= User.find(session["warden.user.user.key"][0][0])
    elsif session["warden.user.student.key"]
      @current_user ||= User.find(session["warden.user.student.key"][0][0])
    elsif session["warden.user.student.key"]
      @current_user ||= User.find(session["warden.user.student.key"][0][0])
    end
  end
  def user_signed_in?
    current_user.present?
  end

  protected

  # permit additional parameters (the lazy way™) 
  # TODO: Change Devise defaults and invoke custom behaviour so it ins't done lazily
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:first, :last]
  end

end
