class ConsultsController < ApplicationController
  # GET /consults
  # GET /consults.json
  def index
    @consults = Consult.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @consults }
    end
  end

  # GET /consults/1
  # GET /consults/1.json
  def show
    @consult = Consult.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @consult }
    end
  end

  # GET /consults/new
  # GET /consults/new.json
  def new
    @consult = Consult.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @consult }
    end
  end

  # GET /consults/1/edit
  def edit
    @consult = Consult.find(params[:id])
  end

  # POST /consults
  # POST /consults.json
  def create
    @consult = Consult.new(params[:consult])

    respond_to do |format|
      if @consult.save
        format.html { redirect_to @consult, notice: 'Consult was successfully created.' }
        format.json { render json: @consult, status: :created, location: @consult }
      else
        format.html { render action: "new" }
        format.json { render json: @consult.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /consults/1
  # PUT /consults/1.json
  def update
    @consult = Consult.find(params[:id])

    respond_to do |format|
      if @consult.update_attributes(params[:consult])
        format.html { redirect_to @consult, notice: 'Consult was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @consult.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consults/1
  # DELETE /consults/1.json
  def destroy
    @consult = Consult.find(params[:id])
    @consult.destroy

    respond_to do |format|
      format.html { redirect_to consults_url }
      format.json { head :no_content }
    end
  end
end
