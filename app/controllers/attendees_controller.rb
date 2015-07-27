class AttendeesController < ApplicationController

	def index
		@attendees = Attendee.all
	end

	def show
	end

	def new
		@attendee = Attendee.new
	end

	def edit
	end

	def create
		@event = Event.find(params[:event_id])
    	@attendee = @event.attendees.create(attendee_params)
    	redirect_to event_path(@event)
    	if @attendee.save
    		flash.notice = 'Success! You\'re now signed up, watch your email.'
    	else
    		flash.alert = 'Something went wrong, please try again.'
    	end
	end

	def update
	end

	def destroy
	end

	private
		def attendee_params
			params.require(:attendee).permit(:name, :email)
		end
end
