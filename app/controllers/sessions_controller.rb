class SessionsController < Devise::SessionsController

  # -------------------------------------------------------------------
  # Note: The code in #create is part of the solution I found for having
  #       one devise signin with many user types. The full solution can
  #       be found here: https://gist.github.com/joegesualdo/8277084
  #
  # -------------------------------------------------------------------

  def create
    # try to authenticate as a Student
    self.resource = warden.authenticate(auth_options)
    resource_name = self.resource_name

    if resource.nil?
      # try to authenticate as an AdminUser
      resource_name = :expert
      request.params[:expert] = params[:student]

      self.resource = warden.authenticate!(auth_options.merge(scope: :expert))
    end

    set_flash_message(:notice, :signed_in) if is_navigational_format?
    sign_in(resource_name, resource)
    respond_with resource, :location => after_sign_in_path_for(resource)
  end

end