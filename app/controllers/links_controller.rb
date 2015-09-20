class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.create(model_params)
    redirect_to @link
  end

  def show
    @link = Link.find(params[:id])
  end

  private

    def model_params
      params.require(:link).permit(:title, :url)
    end
end
