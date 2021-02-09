class HeroinePowersController < ApplicationController

    def new
        @heroine_power = HeroinePower.new
    end

    def strong_params
        params.require(:heroine_power).permit(:heroine_id, :power_id, :strength)
    end

    def create
        @heroine_power = HeroinePower.new(strong_params)
        if @heroine_power.save
            redirect_to heroine_path(strong_params[:heroine_id])
        else
            render :new
        end
    end

end