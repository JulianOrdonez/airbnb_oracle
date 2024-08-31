-- Asegurar unicidad del correo electrónico
ALTER TABLE User
ADD CONSTRAINT email_unique UNIQUE (email);

-- Asegurar longitud mínima de la contraseña
ALTER TABLE User
ADD CONSTRAINT password_min_length CHECK (LENGTH(password) >= 8);

-- Asegurar unicidad del nombre del estado
ALTER TABLE State
ADD CONSTRAINT state_name_unique UNIQUE (name);

-- Asegurar unicidad del nombre de la ciudad dentro de un estado
ALTER TABLE City
ADD CONSTRAINT city_state_name_unique UNIQUE (name, state_id);

-- Asegurar unicidad del nombre del amenity
ALTER TABLE Amenity
ADD CONSTRAINT amenity_name_unique UNIQUE (name);

-- Asegurar valores positivos en número de habitaciones, baños y huéspedes
ALTER TABLE Place
ADD CONSTRAINT positive_rooms CHECK (number_rooms >= 0),
ADD CONSTRAINT positive_bathrooms CHECK (number_bathrooms >= 0),
ADD CONSTRAINT positive_guests CHECK (max_guest >= 0);

-- Asegurar que el precio por noche no sea negativo
ALTER TABLE Place
ADD CONSTRAINT non_negative_price CHECK (price_by_night >= 0);

-- Limitar la longitud del texto de la reseña
ALTER TABLE Review
ADD CONSTRAINT review_text_length CHECK (LENGTH(text) <= 500);