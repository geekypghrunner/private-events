class EventsController < ApplicationController
    
    def new
    end
    
    def create
        @user = User.find(cookies[:user_id])
        @event = @user.created_events.build(:name => params[:event][:name], :location => params[:event][:location], :date => params[:event][:date], :description => params[:event][:description])
        @event.save
        redirect_to event_path(@event)
        
    end
    
    def show
        @event = Event.find(params[:id])
    end
    
    def index
        @events = Event.all
    end
    
end
