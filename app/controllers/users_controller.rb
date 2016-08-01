class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end
  def index
      @users = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save

    UserMailer.registration_confirmation(@user).deliver_now
    flash[:success] = "Please confirm your email address to continue"
    redirect_to root_url

    else
      flash[:error] = "Ooooppss, something went wrong!"
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def transaction
  
    @userBuyer = User.find(params[:buyer])
    @userOwner = User.find(params[:owner])
		@amount  = 100

		#if @userBuyer[:field, :funds] < @amount
    #  flash[:error] = "You do no have enough money"
		#	redirect_to "/"
		#else
			@userBuyer.update_attribute(:funds, -@amount)
      @userOwner.update_attribute(:funds, @amount)
		  redirect_to "/"
		#end
  end



  def destroy
      User.find(params[:id]).destroy
      flash[:success] = "User deleted"
      redirect_to users_url
  end

  def confirm_email
      user = User.find_by_confirm_token(params[:id])
      if user
        user.email_activate
        flash[:success] = "Welcome to the Poobr! Your email has been confirmed.
        Please sign in to continue."
        redirect_to login_url
      else
        flash[:error] = "Sorry. User does not exist"
        redirect_to root_url
      end
  end

  private



    def user_params
        params.require(:user).permit(:name, :email, :password,
                            :password_confirmation, :level)
    end

end
