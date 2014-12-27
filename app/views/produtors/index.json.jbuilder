json.array!(@produtors) do |produtor|
  json.extract! produtor, :id, :produtor
  json.url produtor_url(produtor, format: :json)
end
