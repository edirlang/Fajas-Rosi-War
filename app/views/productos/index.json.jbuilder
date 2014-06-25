json.array!(@productos) do |producto|
  json.extract! producto, :id, :id_producto, :descripcion, :nombre, :cantidad, :precio
  json.url producto_url(producto, format: :json)
end
