class Dashboard::TraineesController < ApplicationController

  layout 'dashboard'
  def index
    trainee = Trainee.find_by(user_id: current_user.id)

    if !trainee
      redirect_to(edit_user_registration_path)
    else
      super
    end
  end
end
