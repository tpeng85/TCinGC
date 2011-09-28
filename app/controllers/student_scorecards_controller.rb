class StudentScorecardsController < ApplicationController
  # GET /student_scorecards
  # GET /student_scorecards.xml
  def index
    @student_scorecards = StudentScorecard.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @student_scorecards }
    end
  end

  # GET /student_scorecards/1
  # GET /student_scorecards/1.xml
  def show
    @student_scorecard = StudentScorecard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student_scorecard }
    end
  end

  # GET /student_scorecards/new
  # GET /student_scorecards/new.xml
  def new
    @student_scorecard = StudentScorecard.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student_scorecard }
    end
  end

  # GET /student_scorecards/1/edit
  def edit
    @student_scorecard = StudentScorecard.find(params[:id])
  end

  # POST /student_scorecards
  # POST /student_scorecards.xml
  def create
    @student_scorecard = StudentScorecard.new(params[:student_scorecard])

    respond_to do |format|
      if @student_scorecard.save
        format.html { redirect_to(@student_scorecard, :notice => 'Student scorecard was successfully created.') }
        format.xml  { render :xml => @student_scorecard, :status => :created, :location => @student_scorecard }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student_scorecard.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /student_scorecards/1
  # PUT /student_scorecards/1.xml
  def update
    @student_scorecard = StudentScorecard.find(params[:id])

    respond_to do |format|
      if @student_scorecard.update_attributes(params[:student_scorecard])
        format.html { redirect_to(@student_scorecard, :notice => 'Student scorecard was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student_scorecard.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /student_scorecards/1
  # DELETE /student_scorecards/1.xml
  def destroy
    @student_scorecard = StudentScorecard.find(params[:id])
    @student_scorecard.destroy

    respond_to do |format|
      format.html { redirect_to(student_scorecards_url) }
      format.xml  { head :ok }
    end
  end
end
