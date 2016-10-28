json.extract! guess, :id, :bet_id, :usuario_id, :won_status, :guess_text, :guess_status, :created_at, :updated_at
json.url guess_url(guess, format: :json)