# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* Para levantar el proyecto en consola se deben ejecutar las migraciones 

- rails db:migrate

luego se debe levantar el servidor con 

 - rails s

en otra consola abrir 

- rails c

pegar las siguientes lineas:

restaurant1 = Restaurant.create(name: 'Restaurante 1')
restaurant2 = Restaurant.create(name: 'Restaurante 2')

%w[Impresora Servidor\ web Servidor\ de\ base\ de\ datos].each do |device_type|
  Device.create(name: "#{device_type} 1", status: 'OK', restaurant: restaurant1)
  Device.create(name: "#{device_type} 2", status: 'OK', restaurant: restaurant2)
  Device.create(name: "#{device_type} 3", status: 'error', restaurant: restaurant2)
end