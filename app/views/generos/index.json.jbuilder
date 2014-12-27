json.array!(@generos) do |genero|
  json.extract! genero, :id, :genero
  json.url genero_url(genero, format: :json)
end
