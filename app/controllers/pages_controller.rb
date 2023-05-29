class PagesController < ApplicationController

  def index
      @character = Character.all
  end


  def create

  end


  def new
      @character = Character.new(params.permit(:name, :location, :house))
      if @character.save
        redirect_to '/pages/create'
      else
        render :new      
      end
  end


end
