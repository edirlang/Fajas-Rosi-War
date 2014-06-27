json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :cedula, :nombre, :ciudad, :direccion, :telefono, :email, :contrasena
  json.url usuario_url(usuario, format: :json)
end
