class Admin::AboutcolsController < ApplicationController
  
  # GET /aboutcols
  # GET /aboutcols.json
  before_filter :authenticate_admin!
  def index
    @aboutcols = Aboutcol.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aboutcols }
    end
  end

  # GET /aboutcols/1
  # GET /aboutcols/1.json
  def show
    @aboutcol = Aboutcol.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @aboutcol }
    end
  end

  # GET /aboutcols/new
  # GET /aboutcols/new.json
  def new
    @aboutcol = Aboutcol.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @aboutcol }
    end
  end

  # GET /aboutcols/1/edit
  def edit
    @aboutcol = Aboutcol.find(params[:id])
  end

  # POST /aboutcols
  # POST /aboutcols.json
  def create
    @aboutcol = Aboutcol.new(params[:aboutcol])

    respond_to do |format|
      if @aboutcol.save
        format.html { redirect_to [:admin, @aboutcol], notice: 'Aboutcol was successfully created.' }
        format.json { render json: @aboutcol, status: :created, location: @aboutcol }
      else
        format.html { render action: "new" }
        format.json { render json: @aboutcol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /aboutcols/1
  # PUT /aboutcols/1.json
  def update
    @aboutcol = Aboutcol.find(params[:id])

    respond_to do |format|
      if @aboutcol.update_attributes(params[:aboutcol])
        format.html { redirect_to admin_aboutcols_url, notice: 'About us Tab was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @aboutcol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aboutcols/1
  # DELETE /aboutcols/1.json
  def destroy
    @aboutcol = Aboutcol.find(params[:id])
    @aboutcol.destroy

    respond_to do |format|
      format.html { redirect_to admin_aboutcols_url }
      format.json { head :no_content }
    end
  end
end
