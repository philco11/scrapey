class AlertsController < ApplicationController
  
  def index
  end
  
  def new
    @alert = Alert.new 
  end
  
  def create
    @alert = Alert.new(params[:alert]) 
     if @alert.save
       flash[:alert] = "Alert has been created."
       redirect_to @alert
     else
       # nothing, yet
     end
  end
  
  def show
    @alert = Alert.find(params[:id])
  end
end
