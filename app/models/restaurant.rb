class Restaurant < ApplicationRecord
  has_many :devices

  validates :name, presence: true, uniqueness: true

  def state
    {
      id: id,
      name: name,
      devices: devices.map(&:state)
    }
  end
end
