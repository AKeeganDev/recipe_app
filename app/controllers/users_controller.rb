class UsersController < ApplicationController
  RECIPES_PER_PAGE = 4

  def show
    @user = User.find(params[:id])
    @recipes_all = @user.recipes
    @params = params.permit(:page, :query)
    @current_page = params[:page].to_i
    @current_page = 1 if @current_page.zero?
    @recipes = @recipes_all.offset((@current_page - 1) * RECIPES_PER_PAGE)
      .limit(RECIPES_PER_PAGE)
    @total_pages = (@recipes_all.count / RECIPES_PER_PAGE.to_f).ceil
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if user_params[:role] == ENV['SECRET_CODE']
      @user.update(role: "admin")
      @user.save
      redirect_to '/'
    else
      flash[:error] = 'Incorrect code'
      redirect_to edit_user_path(@user.id)
    end
  end

  protected

  def user_params
    params.require(:user).permit(:role)
  end
end