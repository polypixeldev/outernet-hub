class EventsController < ApplicationController
	def index
		render inertia: 'events/index'
	end
end
