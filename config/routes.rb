# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  get 'announcements', to: 'announcements#index'
  get 'guilds', to: 'guilds#index'
  get 'workshops', to: 'workshops#index'
  get 'events', to: 'events#index'
end
