json.extract! artist, :id, :first_name, :last_name, :bio, :created_at, :updated_at
json.url artist_url(artist, format: :json)
