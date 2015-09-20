class LinksController < ApplicationController
  def index
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.create(model_params)
    redirect_to @link
  end

  def show
  end

  private

    def model_params
      params.require(:link).permit(:title, :url)
    end
end
