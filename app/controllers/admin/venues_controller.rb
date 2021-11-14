class Admin::VenuesController < ApplicationController
  def index
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.save ? (redirect_to admin_venues_index_path(@venue)) : (render :new)
  end

  def show
  end

  def edit
  end

  private

  def venue_params
    params.require(:venue).permit(:name, :introduction, :station, :status, :is_active)
  end


end
