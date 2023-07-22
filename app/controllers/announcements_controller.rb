require 'matrix_sdk'

class AnnouncementsController < ApplicationController
	include MatrixClient

	def index
		announcements = get_announcements
		render inertia: 'announcements/index', props: { announcements: announcements.reverse! }
	end
end
