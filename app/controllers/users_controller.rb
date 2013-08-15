class UsersController < ApplicationController
  include ActiveModel::ForbiddenAttributesProtection

  # expose!(:user)

  def show
    @user = User.find( params[:id] )
  end

  def edit
    @user = User.find( params[:id] )
  end

  def create
    @user = User.create( params[:id] )
  end



  def update
    @user = User.find_by_email(params[:user][:email])
    if @user.update_attributes(user_params)
      redirect_to(user_path)
    else
      render :new
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(user_params)
    end

      # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email,:line_1, :line_2, :city, :state, :zip_code, :phone_number, :avatar)
    end

end