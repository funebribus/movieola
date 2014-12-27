json.array!(@estudios) do |estudio|
  json.extract! estudio, :id, :estudio
  json.url estudio_url(estudio, format: :json)
end
