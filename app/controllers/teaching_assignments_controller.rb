class TeachingAssignmentsController < ApplicationController
  # GET /teaching_assignments
  # GET /teaching_assignments.json
  def index
    @teaching_assignments = TeachingAssignment.all


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @teaching_assignments }
    end
  end

  # GET /teaching_assignments/1
  # GET /teaching_assignments/1.json
  def show
    @teaching_assignment = TeachingAssignment.find(params[:id])

    authorize! :show, @teaching_assignment

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @teaching_assignment }
    end
  end

  # GET /teaching_assignments/new
  # GET /teaching_assignments/new.json
  def new
    @teaching_assignment = TeachingAssignment.new
    @users = User.where(:role => 'instructor')

    authorize! :new, @teaching_assignment

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @teaching_assignment }
    end
  end

  # GET /teaching_assignments/1/edit
  def edit
    @teaching_assignment = TeachingAssignment.find(params[:id])
    @users = User.where(:role => 'instructor')

    authorize! :edit, @teaching_assignment

  end

  # POST /teaching_assignments
  # POST /teaching_assignments.json
  def create
    @teaching_assignment = TeachingAssignment.new(params[:teaching_assignment])
    @users = User.where(:role => 'instructor')

    authorize! :create, @teaching_assignment

    respond_to do |format|
      if @teaching_assignment.save
        format.html { redirect_to @teaching_assignment, notice: 'teaching_assignment successfully created.' }
        format.json { render json: @teaching_assignment, status: :created, location: @teaching_assignment }
      else
        format.html { render action: "new" }
        format.json { render json: @teaching_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /teaching_assignments/1
  # PUT /teaching_assignments/1.json
  def update
    @teaching_assignment = TeachingAssignment.find(params[:id])
    @users = User.where(:role => 'instructor')

    authorize! :update, @teaching_assignment

    respond_to do |format|
      if @teaching_assignment.update_attributes(params[:teaching_assignment])
        format.html { redirect_to @teaching_assignment, notice: 'teaching_assignment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @teaching_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teaching_assignments/1
  # DELETE /teaching_assignments/1.json
  def destroy
    @teaching_assignment = TeachingAssignment.find(params[:id])
    @teaching_assignment.destroy

    authorize! :destroy, @teaching_assignment

    respond_to do |format|
      format.html { redirect_to teaching_assignments_url }
      format.json { head :no_content }
    end
  end
end