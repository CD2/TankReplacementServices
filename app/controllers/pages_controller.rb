class PagesController < ApplicationController
  
  def home
    @page = Page.find_by(path: '')
  end

  def about
    @page = Page.find_by(path: 'about')
  end

  def faq
    @page = Page.find_by(path: 'faq')
  	@faqs = Faq.all
  end

  def show
  	@page = Page.find_by(path: params[:id])
  end

end
