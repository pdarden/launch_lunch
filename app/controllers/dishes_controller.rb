class DishesController < ApplicationController
  def show
    @dish = Dish.find(params[:id])
    @comment = @dish.comments.new
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @dish = @restaurant.dishes.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @dish = @restaurant.dishes.build(dish_params)

    if @dish.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def random
    @dish = Dish.all.sample
    redirect_to restaurant_dish_path(@dish.restaurant, @dish)
  end

  private
  def dish_params
    params.require(:dish).permit(:category_id, :name, :price_in_dollars, :description)
  end
end
