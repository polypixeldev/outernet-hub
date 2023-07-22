# frozen_string_literal: true

class HomeController < ApplicationController
  include MatrixClient

  def index
    announcements = get_announcements
    events = Event.all
    sorted_events = events.sort_by { |event| event.start }
    render inertia: 'home/index', props: { announcements: announcements.reverse!.take(2), chat_server: Rails.configuration.x.matrix.name, events: sorted_events.take(3) }
  end
end
