class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end  
  end

  def help
  end

  def about
  end
  
  def contact
  	
  end

  private

	def signed_in_user
       if signed_in?
       redirect_to current_user
       end
    end
end
