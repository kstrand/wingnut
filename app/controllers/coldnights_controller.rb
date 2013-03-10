class ColdnightsController < ApplicationController
  # GET /coldnights
  # GET /coldnights.json
  def index
    @coldnights = Coldnight.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @coldnights }
    end
  end

  # GET /coldnights/1
  # GET /coldnights/1.json
  def show
    @coldnight = Coldnight.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @coldnight }
    end
  end

  # GET /coldnights/new
  # GET /coldnights/new.json
  def new
    @coldnight = Coldnight.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @coldnight }
    end
  end

  # GET /coldnights/1/edit
  def edit
    @coldnight = Coldnight.find(params[:id])
  end

  # POST /coldnights
  # POST /coldnights.json
  def create
    @coldnight = Coldnight.new(params[:coldnight])

    respond_to do |format|
      if @coldnight.save
        format.html { redirect_to @coldnight, notice: 'Coldnight was successfully created.' }
        format.json { render json: @coldnight, status: :created, location: @coldnight }
      else
        format.html { render action: "new" }
        format.json { render json: @coldnight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /coldnights/1
  # PUT /coldnights/1.json
  def update
    @coldnight = Coldnight.find(params[:id])

    respond_to do |format|
      if @coldnight.update_attributes(params[:coldnight])
        format.html { redirect_to @coldnight, notice: 'Coldnight was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @coldnight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coldnights/1
  # DELETE /coldnights/1.json
  def destroy
    @coldnight = Coldnight.find(params[:id])
    @coldnight.destroy

    respond_to do |format|
      format.html { redirect_to coldnights_url }
      format.json { head :no_content }
    end
  end
end
