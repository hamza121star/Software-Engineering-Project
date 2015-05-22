class Instructor1sController < ApplicationController
  # GET /instructor1s
  # GET /instructor1s.json
  def index
    @instructor1s = Instructor1.all
@who=session[:who]
if @who!=-1
	if @who==1
		@s=Instructor1.find(session[:user_id])
		@iddarray=Instructor1.where(email: @s.email)
		@idd=@iddarray[0].id.to_s
	end
	if @who==2
		@s=Student.find(session[:user_id])
		@iddarray=Student.where(email: @s.email)
		@idd=@iddarray[0].id.to_s
	end
end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @instructor1s }
    end
  end

  # GET /instructor1s/1
  # GET /instructor1s/1.json
  def show
    @instructor1 = Instructor1.find(params[:id])
	@instructorcourses = Instructorcourse.where(instructoremail: @instructor1.email)
	@s=Instructor1.find(session[:user_id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @instructor1 }
    end
  end

  # GET /instructor1s/new
  # GET /instructor1s/new.json
  def new
    @instructor1 = Instructor1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @instructor1 }
    end
  end

  # GET /instructor1s/1/edit
  def edit
    @instructor1 = Instructor1.find(params[:id])
  end

  # POST /instructor1s
  # POST /instructor1s.json
  def create
    @instructor1 = Instructor1.new(params[:instructor1])

    respond_to do |format|
      if @instructor1.save
        format.html { redirect_to '/home', notice: 'Instructor account was successfully created. now login!' }
       # format.json { render json: @instructor1, status: :created, location: @instructor1 }
      else
        format.html { render action: "new" }
        format.json { render json: @instructor1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /instructor1s/1
  # PUT /instructor1s/1.json
  def update
    @instructor1 = Instructor1.find(params[:id])

    respond_to do |format|
      if @instructor1.update_attributes(params[:instructor1])
        format.html { redirect_to @instructor1, notice: 'Instructor1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @instructor1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instructor1s/1
  # DELETE /instructor1s/1.json
  def destroy
    @instructor1 = Instructor1.find(params[:id])
    @instructor1.destroy

    respond_to do |format|
      format.html { redirect_to instructor1s_url }
      format.json { head :no_content }
    end
  end
end
