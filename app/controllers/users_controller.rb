class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit]

  # GET /users
  # GET /users.json
  def index
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/1/edit
  def edit
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = current_user
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :email, :sex, :age, :image)
    end
end
