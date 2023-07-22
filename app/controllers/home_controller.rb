# frozen_string_literal: true

class HomeController < ApplicationController
  include MatrixClient

  def index
    announcements = get_announcements
    render inertia: 'home/index', props: { announcements: announcements.reverse!.take(2), chat_server: Rails.configuration.x.matrix.name }
  end
end
