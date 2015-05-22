class StudentcoursesController < ApplicationController
  # GET /studentcourses
  # GET /studentcourses.json
  def index
    @studentcourses = Studentcourse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @studentcourses }
    end
  end

  # GET /studentcourses/1
  # GET /studentcourses/1.json
  def show
    @studentcourse = Studentcourse.find(params[:id])
	@s=Student.find(session[:user_id])
	@iddarray=Student.where(email: @s.email)
	@idd=@iddarray[0].id.to_s
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @studentcourse }
    end
  end

  # GET /studentcourses/new
  # GET /studentcourses/new.json
  def new
    @studentcourse = Studentcourse.new
	@s=Student.find(session[:user_id])
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @studentcourse }
    end
  end

  # GET /studentcourses/1/edit
  def edit
    @studentcourse = Studentcourse.find(params[:id])
	@s=Student.find(session[:user_id])
  end

  # POST /studentcourses
  # POST /studentcourses.json
  def create
@s=Student.find(session[:user_id])
@c=params[:studentcourse][:coursecode]
if Instructorcourse.where(coursecode: @c).length !=0
    @studentcourse = Studentcourse.new(params[:studentcourse])
	
    respond_to do |format|
      if @studentcourse.save
        format.html { redirect_to @studentcourse, notice: 'Studentcourse was successfully created.' }
        format.json { render json: @studentcourse, status: :created, location: @studentcourse }
      else
        format.html { render action: "new" }
        format.json { render json: @studentcourse.errors, status: :unprocessable_entity }
      end
    end
else
    respond_to do |format|
	format.html { redirect_to '/students/'+@s.id.to_s, notice: 'Studentcourse not added b/c it doest exist. click "courses" tab to see what courses are available' }
    end
end
  end

  # PUT /studentcourses/1
  # PUT /studentcourses/1.json
  def update
    @studentcourse = Studentcourse.find(params[:id])
	@s=Student.find(session[:user_id])
    respond_to do |format|
      if @studentcourse.update_attributes(params[:studentcourse])
        format.html { redirect_to @studentcourse, notice: 'Studentcourse was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @studentcourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studentcourses/1
  # DELETE /studentcourses/1.json
  def destroy
    @studentcourse = Studentcourse.find(params[:id])
    @studentcourse.destroy

    respond_to do |format|
      format.html { redirect_to studentcourses_url }
      format.json { head :no_content }
    end
  end
end
