class CarsController < ApplicationController
    before_action :set_car, only: [:show, :edit, :update, :destroy]

    def index

      @cars = if params[:term]
  Car.where('name LIKE ?', "%#{params[:term]}%")
else
  @cars = Car.all
end
            @search = Car.ransack(params[:q])
            if params[:q]
            @cars = @search.result
            elsif params[:sort_price]
            @cars = Car.all.order('price')
            elsif params[:sort_age]
            @cars = Car.all.order('age DESC')
        end
    end

    def new
        @car = Car.new
            flash[:notice] = "Sorry only admin can add car"
            redirect_to cars_path
    end

    def edit
            flash[:notice] = "Sorry only car owners can edit their car information"
            redirect_to cars_path
    end

    def show
        @car = Car.find(params[:id])
        @comments = @car.comments
        @comment = @car.comments.build
    end

    def create
        @car = Car.new(car_params)
        @car.user_id = current_user.id
        if @car.save
          redirect_to cars_path, notice: 'Car is successfully registred.'
        else
          render :new
        end
    end

    def update
        if @car.update(car_params)
            redirect_to @car, notice: 'Car is successfully updated.'
        else
          render :edit
        end
    end

    def destroy
       @car.destroy
       redirect_to cars_path, notice: 'Car is successfully deleted.'
    end

    private
    def set_car
        @car = Car.find(params[:id])
    end

    def car_params
        params.require(:car).permit(:name, :age, :color, :name, :size, :weight, :price, :speed, :power,:picture, :comment)
    end
end
