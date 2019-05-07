class EventsController < ApplicationController

def index
	@all_events = Event.all
end

def new
		@event = Event.new
	end

def create 
e = Event.create(title: params[:title],
			description: params[:description],
			start_date: params[:start_date],
			duration: params[:duration],
			price: params[:price], 
			user_id: 2
		)
		
  	
end


	def edit
		@event_current = Event.find(params[:id])
	end

	def update
	@event_current = Event.find(params[:id])
	@event_current.update(title: params[:title],
			description: params[:description],
			start_date: params[:start_date],
			duration: params[:duration],
			price: params[:price]
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

