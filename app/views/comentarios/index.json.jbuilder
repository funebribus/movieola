json.array!(@comentarios) do |comentario|
  json.extract! comentario, :id, :corpo, :quantidadelikes
  json.url comentario_url(comentario, format: :json)
end
