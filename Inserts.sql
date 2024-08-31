-- Insertar datos en la tabla User
INSERT INTO User (id, updated_at, created_at, email, password, first_name, last_name) VALUES ('user1', SYSTIMESTAMP, SYSTIMESTAMP, 'user1@example.com', 'Password123', 'John', 'Doe');
INSERT INTO User (id, updated_at, created_at, email, password, first_name, last_name) VALUES ('user2', SYSTIMESTAMP, SYSTIMESTAMP, 'user2@example.com', 'Password456', 'Jane', 'Smith');
INSERT INTO User (id, updated_at, created_at, email, password, first_name, last_name) VALUES ('user3', SYSTIMESTAMP, SYSTIMESTAMP, 'user3@example.com', 'Password789', 'Alice', 'Johnson');
INSERT INTO User (id, updated_at, created_at, email, password, first_name, last_name) VALUES ('user4', SYSTIMESTAMP, SYSTIMESTAMP, 'user4@example.com', 'Password012', 'Bob', 'Brown');
INSERT INTO User (id, updated_at, created_at, email, password, first_name, last_name) VALUES ('user5', SYSTIMESTAMP, SYSTIMESTAMP, 'user5@example.com', 'Password345', 'Charlie', 'Davis');

-- Insertar datos en la tabla State
INSERT INTO State (id, updated_at, created_at, name) VALUES ('state1', SYSTIMESTAMP, SYSTIMESTAMP, 'California');
INSERT INTO State (id, updated_at, created_at, name) VALUES ('state2', SYSTIMESTAMP, SYSTIMESTAMP, 'New York');
INSERT INTO State (id, updated_at, created_at, name) VALUES ('state3', SYSTIMESTAMP, SYSTIMESTAMP, 'Texas');
INSERT INTO State (id, updated_at, created_at, name) VALUES ('state4', SYSTIMESTAMP, SYSTIMESTAMP, 'Florida');
INSERT INTO State (id, updated_at, created_at, name) VALUES ('state5', SYSTIMESTAMP, SYSTIMESTAMP, 'Nevada');

-- Insertar datos en la tabla City
INSERT INTO City (id, updated_at, created_at, name, state_id) VALUES ('city1', SYSTIMESTAMP, SYSTIMESTAMP, 'Los Angeles', 'state1');
INSERT INTO City (id, updated_at, created_at, name, state_id) VALUES ('city2', SYSTIMESTAMP, SYSTIMESTAMP, 'San Francisco', 'state1');
INSERT INTO City (id, updated_at, created_at, name, state_id) VALUES ('city3', SYSTIMESTAMP, SYSTIMESTAMP, 'New York City', 'state2');
INSERT INTO City (id, updated_at, created_at, name, state_id) VALUES ('city4', SYSTIMESTAMP, SYSTIMESTAMP, 'Houston', 'state3');
INSERT INTO City (id, updated_at, created_at, name, state_id) VALUES ('city5', SYSTIMESTAMP, SYSTIMESTAMP, 'Miami', 'state4');

-- Insertar datos en la tabla Amenity
INSERT INTO Amenity (id, updated_at, created_at, name) VALUES ('amenity1', SYSTIMESTAMP, SYSTIMESTAMP, 'Wi-Fi');
INSERT INTO Amenity (id, updated_at, created_at, name) VALUES ('amenity2', SYSTIMESTAMP, SYSTIMESTAMP, 'Parking');
INSERT INTO Amenity (id, updated_at, created_at, name) VALUES ('amenity3', SYSTIMESTAMP, SYSTIMESTAMP, 'Pool');
INSERT INTO Amenity (id, updated_at, created_at, name) VALUES ('amenity4', SYSTIMESTAMP, SYSTIMESTAMP, 'Gym');
INSERT INTO Amenity (id, updated_at, created_at, name) VALUES ('amenity5', SYSTIMESTAMP, SYSTIMESTAMP, 'Breakfast');

-- Insertar datos en la tabla Place
INSERT INTO Place (id, updated_at, created_at, user_id, city_id, name, description, number_rooms, number_bathrooms, max_guest, price_by_night, latitude, longitude) VALUES ('place1', SYSTIMESTAMP, SYSTIMESTAMP, 'user1', 'city1', 'Cozy Apartment', 'A nice and cozy apartment in downtown LA', 2, 1, 4, 120.00, 34.052235, -118.243683);
INSERT INTO Place (id, updated_at, created_at, user_id, city_id, name, description, number_rooms, number_bathrooms, max_guest, price_by_night, latitude, longitude) VALUES ('place2', SYSTIMESTAMP, SYSTIMESTAMP, 'user2', 'city3', 'Luxury Condo', 'A luxury condo with amazing views in NYC', 3, 2, 6, 300.00, 40.712776, -74.005974);
INSERT INTO Place (id, updated_at, created_at, user_id, city_id, name, description, number_rooms, number_bathrooms, max_guest, price_by_night, latitude, longitude) VALUES ('place3', SYSTIMESTAMP, SYSTIMESTAMP, 'user3', 'city2', 'Charming Bungalow', 'A charming bungalow in San Francisco', 1, 1, 2, 150.00, 37.774929, -122.419418);
INSERT INTO Place (id, updated_at, created_at, user_id, city_id, name, description, number_rooms, number_bathrooms, max_guest, price_by_night, latitude, longitude) VALUES ('place4', SYSTIMESTAMP, SYSTIMESTAMP, 'user4', 'city4', 'Spacious House', 'A spacious house perfect for families in Houston', 4, 3, 8, 200.00, 29.760427, -95.369804);
INSERT INTO Place (id, updated_at, created_at, user_id, city_id, name, description, number_rooms, number_bathrooms, max_guest, price_by_night, latitude, longitude) VALUES ('place5', SYSTIMESTAMP, SYSTIMESTAMP, 'user5', 'city5', 'Beachfront Villa', 'A luxurious beachfront villa in Miami', 5, 4, 10, 500.00, 25.761681, -80.191788);

-- Insertar datos en la tabla Review
INSERT INTO Review (id, updated_at, created_at, user_id, place_id, text) VALUES ('review1', SYSTIMESTAMP, SYSTIMESTAMP, 'user1', 'place2', 'Amazing place! Highly recommend.');
INSERT INTO Review (id, updated_at, created_at, user_id, place_id, text) VALUES ('review2', SYSTIMESTAMP, SYSTIMESTAMP, 'user2', 'place1', 'Very comfortable and well-located.');
INSERT INTO Review (id, updated_at, created_at, user_id, place_id, text) VALUES ('review3', SYSTIMESTAMP, SYSTIMESTAMP, 'user3', 'place3', 'Loved the charm and location.');
INSERT INTO Review (id, updated_at, created_at, user_id, place_id, text) VALUES ('review4', SYSTIMESTAMP, SYSTIMESTAMP, 'user4', 'place4', 'Perfect for families. Plenty of space.');
INSERT INTO Review (id, updated_at, created_at, user_id, place_id, text) VALUES ('review5', SYSTIMESTAMP, SYSTIMESTAMP, 'user5', 'place5', 'Incredible views and luxury amenities.');

-- Insertar datos en la tabla PlaceAmenity
INSERT INTO PlaceAmenity (amenity_id, place_id) VALUES ('amenity1', 'place1');
INSERT INTO PlaceAmenity (amenity_id, place_id) VALUES ('amenity2', 'place1');
INSERT INTO PlaceAmenity (amenity_id, place_id) VALUES ('amenity3', 'place2');
INSERT INTO PlaceAmenity (amenity_id, place_id) VALUES ('amenity4', 'place3');
INSERT INTO PlaceAmenity (amenity_id, place_id) VALUES ('amenity5', 'place5');
INSERT INTO PlaceAmenity (amenity_id, place_id) VALUES ('amenity1', 'place2');
INSERT INTO PlaceAmenity (amenity_id, place_id) VALUES ('amenity2', 'place4');
INSERT INTO PlaceAmenity (amenity_id, place_id) VALUES ('amenity3', 'place5');
INSERT INTO PlaceAmenity (amenity_id, place_id) VALUES ('amenity4', 'place1');
INSERT INTO PlaceAmenity (amenity_id, place_id) VALUES ('amenity5', 'place3');
