class ActivitiesController < ApplicationController

 def index
  activities = Activity.all
  render json: activities
 end

 # def destroy
 #  activity = Activity.find_by(id: params[:id])
 #  activity.destroy
 #  head :no_content
 # end

 def destroy
  Activity.find(params[:id]).destroy
  head :no_content
 end
 
end
