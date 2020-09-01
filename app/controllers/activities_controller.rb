class ActivitiesController < ApplicationController

  def index
    @activities = Activity.all
  end

  def show
    @activity = get_activity
  end

  private

  def get_activity
    Activity.find(params[:id])
  end


end
