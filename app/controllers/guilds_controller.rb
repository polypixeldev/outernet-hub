class GuildsController < ApplicationController
	def index
		guilds = Guild.all
		render inertia: 'guilds/index', props: { guilds: guilds }
	end
end
