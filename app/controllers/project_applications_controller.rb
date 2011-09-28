class ProjectApplicationsController < ApplicationController
  # GET /project_applications
  # GET /project_applications.xml
  def index
    @project_applications = ProjectApplication.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @project_applications }
    end
  end

  # GET /project_applications/1
  # GET /project_applications/1.xml
  def show
    @project_application = ProjectApplication.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @project_application }
    end
  end

  # GET /project_applications/new
  # GET /project_applications/new.xml
  def new
    @project_application = ProjectApplication.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @project_application }
    end
  end

  # GET /project_applications/1/edit
  def edit
    @project_application = ProjectApplication.find(params[:id])
  end

  # POST /project_applications
  # POST /project_applications.xml
  def create
    @project_application = ProjectApplication.new(params[:project_application])

    respond_to do |format|
      if @project_application.save
        format.html { redirect_to(@project_application, :notice => 'Project application was successfully created.') }
        format.xml  { render :xml => @project_application, :status => :created, :location => @project_application }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @project_application.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /project_applications/1
  # PUT /project_applications/1.xml
  def update
    @project_application = ProjectApplication.find(params[:id])

    respond_to do |format|
      if @project_application.update_attributes(params[:project_application])
        format.html { redirect_to(@project_application, :notice => 'Project application was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @project_application.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /project_applications/1
  # DELETE /project_applications/1.xml
  def destroy
    @project_application = ProjectApplication.find(params[:id])
    @project_application.destroy

    respond_to do |format|
      format.html { redirect_to(project_applications_url) }
      format.xml  { head :ok }
    end
  end
end
