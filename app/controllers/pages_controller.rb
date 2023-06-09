class PagesController < ApplicationController

  def index
      @characters = Character.all
  end


  def create
    @personaje = personaje.new(params.require(:personaje).permiso(:nombre, :ubicacion, :casa))
    if @personaje.guardar
      redirect_to '/pages/index'
      @character = Character.new(params.require(:character).permit(:name, :location, :house))
      if @character.save
        redirect_to '/pages/index'
        else
        render :new      
      end
    end
  end

  def new
    @character = Character.new
  end


end


