class UpdateDeviceStatusJob < ApplicationJob
  queue_as :default

  def perform
    Restaurant.all.each do |restaurant|
      restaurant.devices.each(&:update_status)
      CentralServer.update_state(restaurant.state)
    end
  end

  after_perform do
    self.class.set(wait: 30.seconds).perform_later
  end
end
