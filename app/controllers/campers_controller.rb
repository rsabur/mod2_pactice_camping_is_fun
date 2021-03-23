class CampersController < ApplicationController
  
  def index
    @campers = Camper.all
  end

  def show
    @camper = Camper.find(params[:id])
    # byebug
  end

  def new
    @camper = Camper.new
  end

  def create
    @camper = Camper.new(camper_params)

    if @camper.valid?
      @camper.save
      redirect_to camper_path(@camper)
    else
      flash.now[:messages] = @camper.errors.full_messages[0]
      render :new
    end
  end
  
  private

  def camper_params
    params.require(:camper).permit(:name, :age)
  end
end
