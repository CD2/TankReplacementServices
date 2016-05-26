class PagesController < ApplicationController
  
  def home
    @page = Page.find_by(path: '')
  end

  def testimonials
    @page = Page.find_by(path: 'testimonials')
    @testimonials = Testimonial.all
  end

  def faq
    @page = Page.find_by(path: 'faq')
  	@faqs = Faq.all
  end

  def show
  	@page = Page.find_by(path: params[:id])
    redirect_to faqs_path if @page.path == 'faq'
  end

end
