class PasswordsController < ApplicationController
  before_action :required_user_logged_in!
  def edit; end

  def update
    if Current.user.update(passwords_params)
      redirect_to root_path, notice: 'passwords has been changed !'
    else
      render :edit
    end
  end

  private

  def passwords_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end
