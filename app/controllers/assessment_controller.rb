class AssessmentController < ApplicationController 
  # javascript ,html/css, ruby..
  def show
    @assessments = 
    current_user.assessments
      .where(assessment_type=params[:assessment_type]).all
  end
  # GET of create
  def new
  end
  def create 
    @assessment = Assessment.new
  end
end