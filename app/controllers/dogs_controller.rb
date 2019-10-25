class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end

  def new
    @dogs = Dog.new
  end

  def create
    Dog.create(dog_params)
    redirect_to root_path
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :age, :funfact)
  end

end
