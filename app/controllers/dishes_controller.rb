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
      redirect_to restaurant_path(@restaurant),
        flash: { success: "You added a dish!" }
    else
      render :new,
        alert: "Something went wrong..."
    end
  end

  def random

    random_number = rand(Dish.all.count)
    @dish = Dish.find(random_number)
    if @dish.present?
      redirect_to restaurant_dish_path(@dish.restaurant, @dish)
    else
      redirect_to new_restaurant_path,
        notice: "There's no restaurant yet. But, you should add one!"
    end
  end

  private
  def dish_params
    params.require(:dish).permit(:category_id, :name, :price_in_dollars, :description)
  end
end
