class CarsController < ApplicationController
    before_action :set_car, only: [:show, :edit, :update, :destroy]

    def index
        if current_user.role == "Client"
            @search = Car.ransack(params[:q])
            if params[:q]
            @cars = @search.result.page(params[:page])
            elsif params[:sort_price]
            @cars = Car.all.order('price').page(params[:page])
            elsif params[:sort_age]
            @cars = Car.all.order('age DESC').page(params[:page])
            else
            @cars = Car.all.order('created_at DESC').page(params[:page])
            end
        end
        if current_user.role == "Owner"
            @search = Car.ransack(params[:q])
            if params[:q]
            @cars = @search.result
            elsif params[:sort_price]
            @cars = Car.all.order('price')
            elsif params[:sort_age]
            @cars = Car.all.order('age DESC')
            else
            @cars = Car.all.order('purchased')
            end
        end
    end

    def new
        @car = Car.new
        if current_user.role == "Client"
            flash[:notice] = "Sorry only admin can add car"
            redirect_to cars_path
        end
    end

    def edit
        if current_user.role == "Client"
            flash[:notice] = "Sorry only car owners can edit their car information"
            redirect_to cars_path
        end
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
          redirect_to cars_path
        else
          render :new
        end
    end

    def update
        if @car.update(car_params)
            redirect_to @car
        else
          render :edit
        end
    end

    def destroy
       @car.destroy
       redirect_to cars_path
    end

    private
    def set_car
        @car = Car.find(params[:id])
    end

    def car_params
        params.require(:car).permit(:name, :age, :color, :name, :size, :weight, :price, :speed, :user_id,:picture, :comment)
    end
end
