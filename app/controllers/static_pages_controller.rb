class StaticPagesController < ApplicationController
 #since it inherits from application controller, the empty method will map to {methodname}.html.erb view
  def home
   if logged_in?
    @micropost = current_user.microposts.build
    @feed_items = current_user.feed.paginate(page: params[:page])
   end
  end

  def help
  end
  
  def about
  end
end
