class BandsController < ApplicationController

  def new

  end

  def create

  end

  def show

  end

  def index

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def band_params
    params.require(:band).permit(:name)
  end
end
