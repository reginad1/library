class Users::SessionsController < Devise::SessionsController
  respond_to :json
  skip_before_action :verify_authenticity_token

  def create
   @user = User.find_by(email: params[:email])
   if @user.valid_password? params[:password]
    sign_in @user
    current_user = @user
   end
  end

  def show
    render json: User.find(current_user["id"]).full_name
  end

  def destroy
    @user = User.find(current_user["id"])
    sign_out @user
    head 200
  end

end
