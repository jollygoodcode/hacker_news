class LinksController < ApplicationController
  def index
  end

  def new
    @link = Link.new
  end
end
