Rails.application.routes.draw do
  root 'users#index'
  resources :users do
    resources :pokemons
  end

  get '/fetch_users', to: 'users#fetch'
  get '/search_poke', to: 'pokemons#search'
  get '/fetch_poke', to: 'pokemons#fetch'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
