class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    if !@restaurants.present?
      redirect_to new_restaurant_path,
        notice: "There's no restaurant yet. But, you should add one!"
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to restaurant_path(@restaurant),
        flash: { success: "Your restaurant was added!" }
    else
      render :new,
        alert: "Something went wrong..."
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :description)
  end

end
