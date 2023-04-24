class AddPrinterTypeToDevices < ActiveRecord::Migration[6.1]
  def change
    add_column :devices, :printer_type, :string
  end
end
