class WorkshopsController < ApplicationController
	def index
		workshops = Workshop.all
		sorted_workshops = workshops.sort_by { |workshop| workshop[:datetime]}
		upcoming_workshops = []
		sorted_workshops.each do |workshop|
			if workshop[:datetime] >= DateTime.now
				upcoming_workshops << workshop
			end
		end
		past_workshops = []
		sorted_workshops.each do |workshop|
			if workshop[:datetime] < DateTime.now
				past_workshops << workshop
			end
		end
		render inertia: 'workshops/index', props: { upcoming_workshops: upcoming_workshops, past_workshops: past_workshops }
	end
end
