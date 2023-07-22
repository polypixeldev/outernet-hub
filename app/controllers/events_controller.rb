class EventsController < ApplicationController
	def index
		events = Event.all
		render inertia: 'events/index', props: { events: events }
	end
end
