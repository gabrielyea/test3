json.extract! user, :id, :name, :picture, :created_at, :updated_at
json.url user_url(user, format: :json)
