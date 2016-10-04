json.array!(@aposta) do |apostum|
  json.extract! apostum, :id, :t.integer, :idSala, :t.integer, :t.string
  json.url apostum_url(apostum, format: :json)
end
