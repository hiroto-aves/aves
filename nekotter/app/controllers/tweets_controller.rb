class TweetsController < ApplicationController
 def index
    @tweets  = Tweet.all.order("created_at DESC")
  end

  def new
  end

  def create
    Tweet.create(text: tweet_params[:text])
  end

  private
  def tweet_params
    params.permit(:text)
  end

end
