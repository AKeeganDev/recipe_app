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
end