json.array!(@filmes) do |filme|
  json.extract! filme, :id, :titulo, :datalancamento, :imagemdecapa, :sinopse, :duracao, :tags, :nota
  json.url filme_url(filme, format: :json)
end
