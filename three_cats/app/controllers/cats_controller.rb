class CatsController < ApplicationController
    
    def index
        @cats = Cat.all
        render :index
    end

    def new
        @cat = Cat.new
    end

    def show
        @cat = Cat.find_by(id: params[:id])
        render :show
    end


    private
    def cat_params
        params.require(:cat).permit(:name, :age, :sex, :birth_date, :description)
    end
    
end