class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    if resource.role == "trainee"
      dashboard_trainees_path
    elsif resource.role == "trainer"
      trainer_path
    else
      super
    end
  end
end