json.array!(@ators) do |ator|
  json.extract! ator, :id, :ator
  json.url ator_url(ator, format: :json)
end
