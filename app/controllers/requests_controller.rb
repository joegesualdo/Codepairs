class RequestsController < ApplicationController
  def new
   @request = Request.new 
  end

  def create
    @request = Request.new(request_params)
    if @request.save
      redirect_to :profile_users
    end
  end

  private

  def request_params
    params.require(:request).permit(:description, :student_id)
  end
end
