class EnrollmentsController < ApplicationController
  # GET /enrollments
  # GET /enrollments.json
  def index
    @enrollments = Enrollment.all



    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @enrollments }
    end
  end

  # GET /enrollments/1
  # GET /enrollments/1.json
  def show
    @enrollment = Enrollment.find(params[:id])

    authorize! :show, @enrollment

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @enrollment }
    end
  end

  # GET /enrollments/new
  # GET /enrollments/new.json
  def new
    @enrollment = Enrollment.new
    @users = User.where(:role => 'student')

    authorize! :new, @enrollment

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @enrollment }
    end
  end

  # GET /enrollments/1/edit
  def edit
    @enrollment = Enrollment.find(params[:id])
    @users = User.where(:role => 'student')

    authorize! :edit, @enrollment
  end

  # POST /enrollments
  # POST /enrollments.json
  def create
    @enrollment = Enrollment.new(params[:enrollment])
    @users = User.where(:role => 'student')

    authorize! :create, @enrollment

    respond_to do |format|
      if @enrollment.save
        format.html { redirect_to @enrollment, notice: 'enrollment successfully created.' }
        format.json { render json: @enrollment, status: :created, location: @enrollment }
      else
        format.html { render action: "new" }
        format.json { render json: @enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /enrollments/1
  # PUT /enrollments/1.json
  def update
    @enrollment = Enrollment.find(params[:id])
    @users = User.where(:role => 'student')

    authorize! :update, @enrollment

    respond_to do |format|
      if @enrollment.update_attributes(params[:enrollment])
        format.html { redirect_to @enrollment, notice: 'enrollment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enrollments/1
  # DELETE /enrollments/1.json
  def destroy
    @enrollment = Enrollment.find(params[:id])
    @enrollment.destroy

    authorize! :destroy, @enrollment

    respond_to do |format|
      format.html { redirect_to enrollments_url }
      format.json { head :no_content }
    end
  end
end