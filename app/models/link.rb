class Link < ActiveRecord::Base
  def upvote
    increment!(:scores)
  end
end
