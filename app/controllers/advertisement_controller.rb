class AdvertisementController < ApplicationController
  def index
    @ads =  Advertisement.all
  end

  def show
    @ads = Advertisement.find(params[:id])
  end

  def new
    @ads = Advertisement.new
  end

  def create
    @ads = Advertisement.new
    @ads.title = params[:ads][:title]
    @ads.body = params[:ads][:body]
    @ads.price = params[:ads][:price]

    if @ads.save
      flash[:notice] = "Advertisement was saved."
      redirect_to @ads
    else
      flash.now[:alert] = "There was an error saving the Ad. Please try again."
      render :new
    end
  end
end