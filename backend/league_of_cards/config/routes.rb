Rails.application.routes.draw do
  resources :all_cards
  namespace :api do
    namespace :v1 do

      resources :players do
        resources :cards
      end

      resources :players do
        resources :decks
      end

      # get 'players/:player_id/cards', to: 'cards#player_cards'
      # get 'players/:player_id/cards/:card_id', to: 'cards#player_cards_card_show'
      # get 'players/:player_id/cards/:card_id/edit', to: 'cards#player_cards_card_edit'
      # patch 'players/:player_id/cards/:card_id', to: 'cards#player_cards_card_patch'

      # get 'players/:player_id/decks', to: 'decks#player_decks'
      # get 'players/:player_id/decks/:deck_id', to: 'decks#player_decks_show'

      resources :cards


      # resources :cards do
      #   resources :decks, only: [:show, :new, :create, :edit, :update]
      # end

      # get 'cards/:card_id/players', to: 'players#card_players' ++
      # get 'cards/:card_id/decks', to: 'decks#card_decks' +++

      # resources :collections

      resources :decks do
        resources :cards
      end
      # do
      #   resources :players, only: [:show, :new, :create, :edit, :update]
      # end

      # resources :decks do
      #   resources :cards, only: [:show, :new, :create, :edit, :update]
      # end

      # get 'decks/:deck_id/player', to: 'players#deck_player'
      # get 'decks/:deck_id/cards', to: 'cards#deck_cards'

      resources :deckcards

      resources :allcards
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
