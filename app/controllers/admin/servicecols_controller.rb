class Admin::ServicecolsController < ApplicationController
  
  # GET /servicecols
  # GET /servicecols.json
  before_filter :authenticate_admin!
  def index
    @servicecols = Servicecol.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @servicecols }
    end
  end

  # GET /servicecols/1
  # GET /servicecols/1.json
  def show
    @servicecol = Servicecol.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @servicecol }
    end
  end

  # GET /servicecols/new
  # GET /servicecols/new.json
  def new
    @servicecol = Servicecol.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @servicecol }
    end
  end

  # GET /servicecols/1/edit
  def edit
    @servicecol = Servicecol.find(params[:id])
  end

  # POST /servicecols
  # POST /servicecols.json
  def create
    @servicecol = Servicecol.new(params[:servicecol])

    respond_to do |format|
      if @servicecol.save
        format.html { redirect_to [:admin, @servicecol], notice: 'Servicecol was successfully created.' }
        format.json { render json: @servicecol, status: :created, location: @servicecol }
      else
        format.html { render action: "new" }
        format.json { render json: @servicecol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /servicecols/1
  # PUT /servicecols/1.json
  def update
    @servicecol = Servicecol.find(params[:id])

    respond_to do |format|
      if @servicecol.update_attributes(params[:servicecol])
        format.html { redirect_to admin_servicecols_url, notice: 'Service Tab was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @servicecol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servicecols/1
  # DELETE /servicecols/1.json
  def destroy
    @servicecol = Servicecol.find(params[:id])
    @servicecol.destroy

    respond_to do |format|
      format.html { redirect_to admin_servicecols_url }
      format.json { head :no_content }
    end
  end
end
