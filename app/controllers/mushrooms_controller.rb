class MushroomsController < ApplicationController
  def index
    @mushrooms = MushroomOne.all
    
  end
end
