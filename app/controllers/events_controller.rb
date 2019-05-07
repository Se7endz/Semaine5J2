class EventsController < ApplicationController
encoding: utf-8
def index
	@all_events = Event.all.reverse	
end

def new
		@event = Event.new
	end

def create 
		@event = Event.new(user_id: current_user,
			title: params[:title],
			start_date: params[:start_date],
			duration: params[:duration],
			description: params[:description],
			price: params[:price],
			location: params[:location]			
			)

			if @event.save
				flash[:success] = "Event successfully added! 👍"
      			redirect_to events_path #Affiche l'index des gossips
    		else
      			render 'new' # Reste sur la view de gossips New.
    		end
end


	def edit
		@event_current = Event.find(params[:id])
	end

	def update
	@event_current = Event.find(params[:id])
	@event_current.update(title: params[:event][:title],
			description: params[:event][:description],
			start_date: params[:event][:start_date],
			duration: params[:event][:duration],
			price: params[:event][:price]
		)
	end

	def show

	@event_title = Event.find(params[:id]).title
	@event_description = Event.find(params[:id]).description
	@event_date = Event.find(params[:id]).start_date
	@event_duration = Event.find(params[:id]).duration
	@event_price = Event.find(params[:id]).price
	@event_id = Event.find(params[:id]).id
	end

	def destroy
		
	end
end

