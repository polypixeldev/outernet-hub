class GuildsController < ApplicationController
	def index
		render inertia: 'guilds/index'
	end
end
