json.array!(@resposts) do |respost|
  json.extract! respost, :id, :corpo, :quantidadelikes
  json.url respost_url(respost, format: :json)
end
