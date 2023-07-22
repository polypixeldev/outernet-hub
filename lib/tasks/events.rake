desc 'Create a new event'
task :createevent, [:title, :location, :start_date, :start_hours, :start_minutes, :end_date, :end_hours, :end_minutes] => [:environment] do |t, args|
	Event.add(args[:title], args[:location], args[:start_date], args[:start_hours], args[:start_minutes], args[:end_date], args[:end_hours], args[:end_minutes])
end