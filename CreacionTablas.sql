-- Tabla User
CREATE TABLE User (
    id VARCHAR2(255) PRIMARY KEY,
    updated_at TIMESTAMP,
    created_at TIMESTAMP,
    email VARCHAR2(255) NOT NULL,
    password VARCHAR2(255) NOT NULL,
    first_name VARCHAR2(255),
    last_name VARCHAR2(255)
);

-- Tabla State
CREATE TABLE State (
    id VARCHAR2(255) PRIMARY KEY,
    updated_at TIMESTAMP,
    created_at TIMESTAMP,
    name VARCHAR2(255) NOT NULL
);

-- Tabla City
CREATE TABLE City (
    id VARCHAR2(255) PRIMARY KEY,
    updated_at TIMESTAMP,
    created_at TIMESTAMP,
    name VARCHAR2(255) NOT NULL,
    state_id VARCHAR2(255) REFERENCES State(id)
);

-- Tabla Amenity
CREATE TABLE Amenity (
    id VARCHAR2(255) PRIMARY KEY,
    updated_at TIMESTAMP,
    created_at TIMESTAMP,
    name VARCHAR2(255) NOT NULL
);

-- Tabla Place
CREATE TABLE Place (
    id VARCHAR2(255) PRIMARY KEY,
    updated_at TIMESTAMP,
    created_at TIMESTAMP,
    user_id VARCHAR2(255) REFERENCES User(id),
    city_id VARCHAR2(255) REFERENCES City(id),
    name VARCHAR2(255),
    description VARCHAR2(255),
    number_rooms INTEGER DEFAULT 0,
    number_bathrooms INTEGER DEFAULT 0,
    max_guest INTEGER DEFAULT 0,
    price_by_night FLOAT,
    latitude FLOAT,
    longitude FLOAT
);

-- Tabla Review
CREATE TABLE Review (
    id VARCHAR2(255) PRIMARY KEY,
    updated_at TIMESTAMP,
    created_at TIMESTAMP,
    user_id VARCHAR2(255) REFERENCES User(id),
    place_id VARCHAR2(255) REFERENCES Place(id),
    text VARCHAR2(255)
);

-- Tabla PlaceAmenity
CREATE TABLE PlaceAmenity (
    amenity_id VARCHAR2(255) REFERENCES Amenity(id),
    place_id VARCHAR2(255) REFERENCES Place(id),
    PRIMARY KEY (amenity_id, place_id)
);