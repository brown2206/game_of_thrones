class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def new
    @house = House.new
  end

  def create
      @house = House.create!(house_params.merge(user: current_user))
      redirect_to house_path(@house)
  end

  def show
    @house = House.find(params[:id])
  end

  def edit
    @house = House.find(params[:id])
  end

  def update
    @house = House.find(params[:id])
    if @house.user == current_user && !@post.user.nil?
      @house.update(house_params)
    else
      flash[:notice] = "Please don't attempt to edit someone else's post."
    redirect_to house_path(@house)
  end
  end

  def destroy
    @house = House.find(params[:id])
    if @house.user == current_user
    @house.destroy
  end
  redirect_to houses_path
end

  private
    def house_params
      params.require(:house).permit(:name, :img_url)
    end
end
