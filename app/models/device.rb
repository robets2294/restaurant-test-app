class Device < ApplicationRecord
  belongs_to :restaurant

  validates :name, presence: true, uniqueness: true

  def state
    {
      id: id,
      name: name,
      type: type,
      status: status
    }
  end

  def update_status
    # aquí se debería implementar la lógica para actualizar el estado del dispositivo
    # por simplicidad, aquí simplemente se cambia aleatoriamente el estado
    update(status: %w[OK ERROR].sample)
  end
end
