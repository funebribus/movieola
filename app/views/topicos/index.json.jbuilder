json.array!(@topicos) do |topico|
  json.extract! topico, :id, :corpo, :titulo, :quantidade_likes, :tags, :quantidade_visualizacoes
  json.url topico_url(topico, format: :json)
end
