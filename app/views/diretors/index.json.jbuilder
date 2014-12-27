json.array!(@diretors) do |diretor|
  json.extract! diretor, :id, :diretor
  json.url diretor_url(diretor, format: :json)
end
