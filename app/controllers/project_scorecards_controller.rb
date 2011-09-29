class ProjectScorecardsController < ApplicationController
  # GET /project_scorecards
  # GET /project_scorecards.json
  def index
    @project_scorecards = ProjectScorecard.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @project_scorecards }
    end
  end

  # GET /project_scorecards/1
  # GET /project_scorecards/1.json
  def show
    @project_scorecard = ProjectScorecard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project_scorecard }
    end
  end

  # GET /project_scorecards/new
  # GET /project_scorecards/new.json
  def new
    @project_scorecard = ProjectScorecard.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project_scorecard }
    end
  end

  # GET /project_scorecards/1/edit
  def edit
    @project_scorecard = ProjectScorecard.find(params[:id])
  end

  # POST /project_scorecards
  # POST /project_scorecards.json
  def create
    @project_scorecard = ProjectScorecard.new(params[:project_scorecard])

    respond_to do |format|
      if @project_scorecard.save
        format.html { redirect_to @project_scorecard, notice: 'Project scorecard was successfully created.' }
        format.json { render json: @project_scorecard, status: :created, location: @project_scorecard }
      else
        format.html { render action: "new" }
        format.json { render json: @project_scorecard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /project_scorecards/1
  # PUT /project_scorecards/1.json
  def update
    @project_scorecard = ProjectScorecard.find(params[:id])

    respond_to do |format|
      if @project_scorecard.update_attributes(params[:project_scorecard])
        format.html { redirect_to @project_scorecard, notice: 'Project scorecard was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @project_scorecard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_scorecards/1
  # DELETE /project_scorecards/1.json
  def destroy
    @project_scorecard = ProjectScorecard.find(params[:id])
    @project_scorecard.destroy

    respond_to do |format|
      format.html { redirect_to project_scorecards_url }
      format.json { head :ok }
    end
  end
end
