class AnnouncementsController < ApplicationController
	def index
		render inertia: 'announcements/index'
	  end
end
