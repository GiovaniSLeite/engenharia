json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :name, :email, :access_token, :uid, :photo_url, :provider, :status, :reason, :user_type, :data_ingresso
  json.url usuario_url(usuario, format: :json)
end
