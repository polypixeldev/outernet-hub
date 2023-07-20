class WorkshopsController < ApplicationController
	def index
		render inertia: 'workshops/index'
	end
end
