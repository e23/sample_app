class StaticPagesController < ApplicationController
  def home
    @micropost = current_user.microposts.build if signed_in?
    @feed_items = current_user.feed.paginate(page: params[:page])
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
