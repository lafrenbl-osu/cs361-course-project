json.extract! art_piece, :id, :title, :artist_id, :release_date, :created_at, :updated_at
json.url art_piece_url(art_piece, format: :json)
