json.array!(@materiales) do |materiale|
  json.extract! materiale, :id, :id_material, :nombre, :descripcion, :cantidad
  json.url materiale_url(materiale, format: :json)
end
