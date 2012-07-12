class HomeController < ApplicationController
  
  def index
    @homecols = Homecol.all
    @slides = Slide.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @homecols }
    end
  end
  
  def services
    @servicecols = Servicecol.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @servicecols }
    end
  end
  
  def aboutus
    @aboutcols = Aboutcol.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aboutcols }
    end
  end
  
  def whyus
    @whyuscols = Whyuscol.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @whyuscols }
    end
  end
  
  def contactus
    @admin_contactcols = Admin::Contactcol.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_contactcols }
    end
  end
  
end
