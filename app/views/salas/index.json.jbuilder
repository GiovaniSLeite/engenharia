json.array!(@salas) do |sala|
  json.extract! sala, :id, :name, :description, :idOwner, :sala_type, :reward, :stake
  json.url sala_url(sala, format: :json)
end
