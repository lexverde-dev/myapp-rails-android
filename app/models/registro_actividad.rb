class RegistroActividad < ApplicationRecord
  # Método de clase para registrar una acción desde cualquier controlador
  def self.registrar(accion, modelo, registro_id, datos, ip)
    create(
      accion: accion,
      modelo: modelo,
      registro_id: registro_id,
      datos: datos.to_json,
      ip: ip
    )
  end
end