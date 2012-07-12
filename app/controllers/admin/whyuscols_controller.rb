class Admin::WhyuscolsController < ApplicationController
  
  # GET /whyuscols
  # GET /whyuscols.json
  def index
    @whyuscols = Whyuscol.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @whyuscols }
    end
  end

  # GET /whyuscols/1
  # GET /whyuscols/1.json
  def show
    @whyuscol = Whyuscol.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @whyuscol }
    end
  end

  # GET /whyuscols/new
  # GET /whyuscols/new.json
  def new
    @whyuscol = Whyuscol.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @whyuscol }
    end
  end

  # GET /whyuscols/1/edit
  def edit
    @whyuscol = Whyuscol.find(params[:id])
  end

  # POST /whyuscols
  # POST /whyuscols.json
  def create
    @whyuscol = Whyuscol.new(params[:whyuscol])

    respond_to do |format|
      if @whyuscol.save
        format.html { redirect_to [:admin, @whyuscol], notice: 'Whyuscol was successfully created.' }
        format.json { render json: @whyuscol, status: :created, location: @whyuscol }
      else
        format.html { render action: "new" }
        format.json { render json: @whyuscol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /whyuscols/1
  # PUT /whyuscols/1.json
  def update
    @whyuscol = Whyuscol.find(params[:id])

    respond_to do |format|
      if @whyuscol.update_attributes(params[:whyuscol])
        format.html { redirect_to admin_whyuscols_url, notice: 'Why us Tab was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @whyuscol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whyuscols/1
  # DELETE /whyuscols/1.json
  def destroy
    @whyuscol = Whyuscol.find(params[:id])
    @whyuscol.destroy

    respond_to do |format|
      format.html { redirect_to admin_whyuscols_url }
      format.json { head :no_content }
    end
  end
end
