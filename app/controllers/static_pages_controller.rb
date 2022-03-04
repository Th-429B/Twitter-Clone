class StaticPagesController < ApplicationController
 #since it inherits from application controller, the empty method will map to {methodname}.html.erb view
  def home
  end

  def help
  end
  
  def about
  end
end
