# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Store.create(name: "Test 1", email: 'alicante@alicante.com', telephone: '5678', place: 'Alicante', postcode: '03001', latitude: 51.508742, longitude: -0.120850)
Store.create(name: "Test 2", email: 'madrid@madrid.com', telephone: '9876', place: 'Madrid', postcode: '28006', address: 'https://www.google.com/maps/embed/v1/place?key=AIzaSyAVfhbOjD05WwQzxrKuGNWEqz9Q9ZqOAhA&q=Space+Needle,Seattle+WA')
Store.create(name: "Test 3", email: 'valencia@valencia.com', telephone: '94754', place: 'Valencia', postcode: '4567')
Store.create(name: "Test 4", email: 'alicante@alicante.com', telephone: '5678', place: 'Alicante', postcode: '03001')
Store.create(name: "Test 5", email: 'madrid2@gmail.com', telephone: '5678', place: 'Madrid', postcode: '03001', address: '')
Store.create(name: "Test 6", email: 'sevilla@gmail.com', telephone: '93835434', place: 'Sevilla', postcode: '8765')
Store.create(name: "Test 7", email: 'santander@gmail.com', telephone: '93835434', place: 'Santander', postcode: '8765')
Store.create(name: "Test 8", email: 'sansebastian@gmail.com', telephone: '93835434', place: 'San Sebastián', postcode: '8765')
Store.create(name: "Test 9", email: 'barcelona@gmail.com', telephone: '93835434', place: 'Barcelona', postcode: '8765')
Store.create(name: "Test 10", email: 'acoruñagmail.com', telephone: '93835434', place: 'A Coruña', postcode: '8765')
Store.create(name: "Test 11", email: 'oviedo@gmail.com', telephone: '93835434', place: 'Oviedo', postcode: '8765')

