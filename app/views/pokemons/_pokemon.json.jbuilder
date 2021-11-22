json.extract! pokemon, :id, :name, :picture, :user_id, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)
