class StudentApplicationsController < ApplicationController
  # GET /student_applications
  # GET /student_applications.xml
  def index
    @student_applications = StudentApplication.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @student_applications }
    end
  end

  # GET /student_applications/1
  # GET /student_applications/1.xml
  def show
    @student_application = StudentApplication.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student_application }
    end
  end

  # GET /student_applications/new
  # GET /student_applications/new.xml
  def new
    @student_application = StudentApplication.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student_application }
    end
  end

  # GET /student_applications/1/edit
  def edit
    @student_application = StudentApplication.find(params[:id])
  end

  # POST /student_applications
  # POST /student_applications.xml
  def create
    @student_application = StudentApplication.new(params[:student_application])

    respond_to do |format|
      if @student_application.save
        format.html { redirect_to(@student_application, :notice => 'Student application was successfully created.') }
        format.xml  { render :xml => @student_application, :status => :created, :location => @student_application }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student_application.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /student_applications/1
  # PUT /student_applications/1.xml
  def update
    @student_application = StudentApplication.find(params[:id])

    respond_to do |format|
      if @student_application.update_attributes(params[:student_application])
        format.html { redirect_to(@student_application, :notice => 'Student application was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student_application.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /student_applications/1
  # DELETE /student_applications/1.xml
  def destroy
    @student_application = StudentApplication.find(params[:id])
    @student_application.destroy

    respond_to do |format|
      format.html { redirect_to(student_applications_url) }
      format.xml  { head :ok }
    end
  end
end
