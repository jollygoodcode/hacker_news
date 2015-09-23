class Link < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :url

  def upvote
    increment!(:scores)
  end
end
