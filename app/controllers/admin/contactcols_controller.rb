class Admin::ContactcolsController < ApplicationController
  
  # GET /admin/contactcols
  # GET /admin/contactcols.json
  def index
    @admin_contactcols = Admin::Contactcol.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_contactcols }
    end
  end

  # GET /admin/contactcols/1
  # GET /admin/contactcols/1.json
  def show
    @admin_contactcol = Admin::Contactcol.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_contactcol }
    end
  end

  # GET /admin/contactcols/new
  # GET /admin/contactcols/new.json
  def new
    @admin_contactcol = Admin::Contactcol.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_contactcol }
    end
  end

  # GET /admin/contactcols/1/edit
  def edit
    @admin_contactcol = Admin::Contactcol.find(params[:id])
  end

  # POST /admin/contactcols
  # POST /admin/contactcols.json
  def create
    @admin_contactcol = Admin::Contactcol.new(params[:admin_contactcol])

    respond_to do |format|
      if @admin_contactcol.save
        format.html { redirect_to @admin_contactcol, notice: 'Contactcol was successfully created.' }
        format.json { render json: @admin_contactcol, status: :created, location: @admin_contactcol }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_contactcol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/contactcols/1
  # PUT /admin/contactcols/1.json
  def update
    @admin_contactcol = Admin::Contactcol.find(params[:id])
    respond_to do |format|
      if @admin_contactcol.update_attributes(params[:admin_contactcol])
        format.html { redirect_to admin_contactcols_url, notice: 'Contact Tab was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_contactcol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/contactcols/1
  # DELETE /admin/contactcols/1.json
  def destroy
    @admin_contactcol = Admin::Contactcol.find(params[:id])
    @admin_contactcol.destroy

    respond_to do |format|
      format.html { redirect_to admin_contactcols_url }
      format.json { head :no_content }
    end
  end
end
