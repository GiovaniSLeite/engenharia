json.array!(@aposta) do |apostum|
  json.extract! apostum, :id, :idSala, :idUser, :palpite
  json.url apostum_url(apostum, format: :json)
end
