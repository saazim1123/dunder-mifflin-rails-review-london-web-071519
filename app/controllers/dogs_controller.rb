class DogsController < ApplicationController
    def index
        @dogs = Dog.all
    end

    def new
        @dog = Dog.new
       
    end

    def create
        @dog = Dog.new(dog_params)
        if @dog.valid?
            @dog.save
            redirect_to dogs_path
        else
            render :new
        end
    end

    def show
        @dog.find(params[:id])
    end

    private
    def dog_params
        params.require(:dog).permit(:name, :age, :breed)
    end

end
