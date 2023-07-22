module MatrixClient
	extend ActiveSupport::Concern
	
	included do 
		if $client == nil
			$client = MatrixSdk::Client.new Rails.configuration.x.matrix.server
			$client.login Rails.configuration.x.matrix.username, Rails.configuration.x.matrix.password, no_sync: false

			$client.sync
			$client.start_listener_thread
		end

		def get_announcements
			announcement_room = $client.rooms.select {|room| room.name == 'Announcements'}.first

			message_events = announcement_room.events.select {|event| event[:type] == 'm.room.message'}

			mapped_messages = message_events.map! {|event| {:sender => event[:sender], :body => event[:content][:body], :timestamp => event[:origin_server_ts]}}

			mapped_messages
		end
	end
end