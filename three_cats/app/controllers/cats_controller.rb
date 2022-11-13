class CatsController < ApplicationController
    
    def index
        #@cats = Cat.all
    end



    private
    def cat_params
        params.require(:cat).permit(:name, :age, :sex, :birth_date, :description)
    end
    
end