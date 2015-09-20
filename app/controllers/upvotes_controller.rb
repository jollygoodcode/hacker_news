class UpvotesController < ApplicationController
  def create
    Link.find(params[:link_id]).upvote

    redirect_to root_path
  end
end
