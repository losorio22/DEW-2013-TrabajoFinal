class TweetsController < InheritedResources::Base

  def update_status
    @tweet = Tweet.new(params[:tweet])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tweets }
    end

  end

  def read_message
    @tweet = Tweet.new(params[:tweet])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tweets }
    end

  end

end
