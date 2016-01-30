class PagesController < ApplicationController
  
  def home
  end

  def about
  end

  def faq
  	@faqs = Faq.all
  end

  def show
  	@page = Page.find_by(path: params[:id])
  end

end
