# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]

  layout :resolve_layout

  # GET /resource/sign_up
  # def new
  #  super
  # end

  # POST /resource
  def create
    super do
      case @user.role
      when 'trainee'
        trainee = Trainee.new(user_id: @user.id)
        trainee.save
      when 'trainer'
        trainer = Trainer.new(user_id: @user.id)
        trainer.save
      end
    end
  end

  #GET /resource/edit
  def edit
    super
    @trainers = Trainer.all
  end

  # PUT /resource
  # def update
  #  super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :name, :surname, :password, :password_confirmation, :role])
  end

  def configure_account_update_params
    case current_user.role
    when 'trainee'
      keys = [:weight, :height, :date_of_birth, trainer_attributes: [:id]]
      devise_parameter_sanitizer.permit(:account_update, keys: [:email, :name, :surname, :role, trainee_attributes: keys])
    when 'trainer'
      keys = [:description]
      devise_parameter_sanitizer.permit(:account_update, keys: [:email, :name, :surname, :role, trainer_attributes: keys])
    end

  end

  def resolve_layout
    case action_name
    when 'edit'
      'dashboard'
    else
      'application'
    end
  end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
