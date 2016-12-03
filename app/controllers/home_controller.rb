class HomeController < ApplicationController
  def index
  end

  def about
  end

  def projects
  end

  def contact
  end

  def blog
    @articles = Articles.all
  end
end
