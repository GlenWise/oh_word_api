class UsersController < ApplicationController
  include ActionController::HttpAuthentication::Basic::ControllerMethods

  before_action :set_user, only: [:show, :edit, :update, :destroy]
  # :authenticate_user_from_token :except => [:new]
  before_filter :authenticate_user_from_token, :except => [:create, :get_token]
  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end
  
  def get_token
    # authenticate_with_http_basic do |username, password|
      uname = user_params[:username]
      pwd = user_params[:password]
      # print password
      user = User.find_by_username(uname).try(:authenticate, pwd)
      if user
        print "JJJIJIJIJ #{user}"
        render json: { token: user.auth_token }
      else
        render json: { error: 'Incorrect credentials' }, status: 401
      end
    # end
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    if @user.update(user_params)
      format.json { render :show, status: :ok, location: @user }
    else
      format.json { render json: @user.errors, status: :unprocessable_entity }
    end
    
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    format.json { head :no_content }
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
    


    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :nickname, :password_digest, :password, :password_confirmation)
    end
end
