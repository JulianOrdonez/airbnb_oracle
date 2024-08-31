--
--Creacion de usuario
CREATE USER airbnb IDENTIFIED BY password;


--
--Asigacion de permisos
GRANT CONNECT, RESOURCE TO airbnb;

--
--Asignacion de quota al usuario
ALTER USER AIRBNB QUOTA 10G ON USERS;

--
--Cambio de usuario en la sesion
ALTER SESSION SET CURRENT_SCHEMA=AIRBNB;

