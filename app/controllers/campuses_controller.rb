class CampusesController < ApplicationController
  # GET /campuses
  # GET /campuses.json
  def index
    @campuses = Campus.all


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @campuses }
    end
  end

  # GET /campuses/1
  # GET /campuses/1.json
  def show
    @campus = Campus.find(params[:id])

    authorize! :show, @campus

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @campus }
    end
  end

  # GET /campuses/new
  # GET /campuses/new.json
  def new
    @campus = Campus.new

    authorize! :new, @campus


    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @campus }
    end
  end

  # GET /campuses/1/edit
  def edit
    @campus = Campus.find(params[:id])
    authorize! :edit, @campus

  end

  # POST /campuses
  # POST /campuses.json
  def create
    @campus = Campus.new(params[:campus])

    authorize! :create, @campus


    respond_to do |format|
      if @campus.save
        format.html { redirect_to @campus, notice: 'campus successfully created.' }
        format.json { render json: @campus, status: :created, location: @campus }
      else
        format.html { render action: "new" }
        format.json { render json: @campus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /campuses/1
  # PUT /campuses/1.json
  def update
    @campus = Campus.find(params[:id])

    authorize! :update, @campus

    respond_to do |format|
      if @campus.update_attributes(params[:campus])
        format.html { redirect_to @campus, notice: "campus was successfully updated." }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @campus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campuses/1
  # DELETE /campuses/1.json
  def destroy
    @campus = Campus.find(params[:id])
    @campus.destroy

    authorize! :destroy, @campus

    respond_to do |format|
      format.html { redirect_to campuses_url }
      format.json { head :no_content }
    end
  end
end

