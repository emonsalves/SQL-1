## Conectamos
-------------------------------------------------------------------------------------------------------- 
Via cmd accedemos 
psql -U postgres
--------------------------------------------------------------------------------------------------------
## Creamos la DB
--------------------------------------------------------------------------------------------------------
CREATE DATABASE emonsalves;
--------------------------------------------------------------------------------------------------------
## Ingresamos a la DB
--------------------------------------------------------------------------------------------------------
\c emonsalves
--------------------------------------------------------------------------------------------------------
## Creamos una tabla clientes
-------------------------------------------------------------------------------------------------------- 
CREATE TABLE clientes(
    cliente_id SERIAL PRIMARY KEY,
    cliente_nombre VARCHAR NOT NULL,
    cliente_email VARCHAR (50) NOT NULL,
    cliente_telefono VARCHAR (16),
    cliente_empresa VARCHAR (50),
    cliente_prioridad SMALLINT NOT NULL CHECK (
        cliente_prioridad >= 1
        AND cliente_prioridad <= 10
    )
);
--------------------------------------------------------------------------------------------------------
## Ingresamos 5 clientes
--------------------------------------------------------------------------------------------------------
INSERT INTO
    clientes(
        cliente_nombre,
        cliente_email,
        cliente_telefono,
        cliente_empresa,
        cliente_prioridad
    )
VALUES
    (
        'Marcos',
        'cliente1@gmail.com',
        '1111',
        'Ripley',
        10
    ),
    (
        'Cristian',
        'cliente2@gmail.com',
        '2222',
        'Nestle',
        9
    ),
    (
        'Eduardo',
        'cliente3@gmail.com',
        '3333',
        'Soprole',
        8
    ),
    (
        'Fabian',
        'cliente4@gmail.com',
        '4444',
        'Lider',
        7
    ),
    (
        'Tomas',
        'cliente5@gmail.com',
        '5555',
        'Unimarc',
        6
    );
-------------------------------------------------------------------------------------------------------
## Seleccionar clientes prioridad mas alta solo 3 se necesitan
--------------------------------------------------------------------------------------------------------
SELECT
    *
FROM
    clientes
ORDER BY
    cliente_prioridad DESC
LIMIT
    3;
--------------------------------------------------------------------------------------------------------
## Seleccionar de la tabla clientes, una prioridad o una empresa, de forma que el resultado devuelva 2 registros.
SELECT
    *
FROM
    clientes
WHERE
    cliente_prioridad = 7
    OR cliente_nombre = 'Eduardo';
--------------------------------------------------------------------------------------------------------

