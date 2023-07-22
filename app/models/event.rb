class Event < ApplicationRecord
	def self.add(title, location, start_date, start_hours, start_minutes, end_date, end_hours, end_minutes)
		event = Event.new(title: title, location: location, start: DateTime.new(2023, 7, start_date.to_i, start_hours.to_i, start_minutes.to_i, 0, Rational(-4, 24)), end: DateTime.new(2023, 7, end_date.to_i, end_hours.to_i, end_minutes.to_i, 0, Rational(-4, 24)))
		event.save
	end
end
