class Admin::HomecolsController < ApplicationController
  
  before_filter :authenticate_admin!
  # GET /homecols
  # GET /homecols.json
  def index
    @homecols = Homecol.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @homecols }
    end
  end

  # GET /homecols/1
  # GET /homecols/1.json
  def show
    @homecol = Homecol.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @homecol }
    end
  end

  # GET /homecols/new
  # GET /homecols/new.json
  def new
    @homecol = Homecol.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @homecol }
    end
  end

  # GET /homecols/1/edit
  def edit
    @homecol = Homecol.find(params[:id])
  end

  # POST /homecols
  # POST /homecols.json
  def create
    @homecol = Homecol.new(params[:homecol])

    respond_to do |format|
      if @homecol.save
        format.html { redirect_to [:admin, @homecol], notice: 'Homecol was successfully created.' }
        format.json { render json: @homecol, status: :created, location: @homecol }
      else
        format.html { render action: "new" }
        format.json { render json: @homecol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /homecols/1
  # PUT /homecols/1.json
  def update
    @homecol = Homecol.find(params[:id])

    respond_to do |format|
      if @homecol.update_attributes(params[:homecol])
        format.html { redirect_to admin_homecols_url, notice: 'Home Tab was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @homecol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homecols/1
  # DELETE /homecols/1.json
  def destroy
    @homecol = Homecol.find(params[:id])
    @homecol.destroy

    respond_to do |format|
      format.html { redirect_to admin_homecols_url }
      format.json { head :no_content }
    end
  end
end
