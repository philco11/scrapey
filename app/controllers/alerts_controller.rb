class AlertsController < ApplicationController
  
  def index
    @alerts = Alert.all
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
       flash[:alert] = "Shit got REALLY really fucked. We lost all your data. Sorry."
     end
  end
  
  def show
    @alert = Alert.find(params[:id])
  end
  

end
