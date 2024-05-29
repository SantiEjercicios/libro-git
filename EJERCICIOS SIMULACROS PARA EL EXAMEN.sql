/*SIMULACRO 1*/

-- Comentario: Este procedimiento imprime los números del 1 hasta N.
DELIMITER //
CREATE PROCEDURE imprimir_numeros(N INT)
BEGIN
    DECLARE i INT;
    SET i = 1;
    WHILE i <= N DO
        SELECT i AS Numero;
        SET i = i + 1;
    END WHILE;
END //
DELIMITER ;


-- Comentario: Este procedimiento calcula el promedio ponderado de tres notas.
DELIMITER //
CREATE PROCEDURE calcular_promedio_ponderado(nota1 DECIMAL(10, 2), nota2 DECIMAL(10, 2), nota3 DECIMAL(10, 2))
BEGIN
    DECLARE promedio DECIMAL(10, 2);
    SET promedio = (nota1 * 0.25) + (nota2 * 0.25) + (nota3 * 0.5);
    SELECT CONCAT('El promedio ponderado es ', promedio) AS Resultado;
END //
DELIMITER ;


-- Comentario: Este procedimiento calcula la ganancia según las condiciones dadas.
DELIMITER //
CREATE PROCEDURE calcular_ganancia(uva_tipo CHAR(1), uva_tamano INT)
BEGIN
    DECLARE precio_inicial DECIMAL(10, 2);
    DECLARE ganancia DECIMAL(10, 2);
    IF uva_tipo = 'A' THEN
        IF uva_tamano = 1 THEN
            SET precio_inicial = 20;
        ELSE
            SET precio_inicial = 30;
        END IF;
    ELSE
        IF uva_tamano = 1 THEN
            SET precio_inicial = -30;
        ELSE
            SET precio_inicial = -50;
        END IF;
    END IF;
    SET ganancia = precio_inicial / 100;
    SELECT CONCAT('La ganancia obtenida es ', ganancia, ' céntimos por kilo de uva.') AS Resultado;
END //
DELIMITER ;


-- Comentario: Este procedimiento muestra la suma del 1 al 5.
DELIMITER //
CREATE PROCEDURE suma_del_1_al_5()
BEGIN
    DECLARE suma INT;
    SET suma = 0;
    DECLARE i INT;
    SET i = 1;
    WHILE i <= 5 DO
        SET suma = suma + i;
        SET i = i + 1;
    END WHILE;
    SELECT CONCAT('La suma del 1 al 5 es ', suma) AS Resultado;
END //
DELIMITER ;


-- Comentario: Esta función calcula el valor de venta de un producto.
DELIMITER //
CREATE FUNCTION calcular_valor_venta(costo DECIMAL(10, 2), porcentaje_ganancia INT) RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE ganancia DECIMAL(10, 2);
    SET ganancia = costo * porcentaje_ganancia / 100;
    RETURN costo + ganancia;
END //
DELIMITER ;


-- Comentario: Esta función cuenta el número de productos en la tabla de productos.
DELIMITER //
CREATE FUNCTION contar_productos() RETURNS INT
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total FROM productos;
    RETURN total;
END //
DELIMITER ;


-- Comentario: Este trigger registra las actualizaciones de clientes en una tabla de auditoría.
DELIMITER //
CREATE TRIGGER auditar_actualizacion_cliente
AFTER UPDATE ON clientes
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_clientes (cliente_id, fecha_actualizacion)
    VALUES (NEW.id, NOW());
END //
DELIMITER ;


-- Comentario: Este procedimiento calcula el promedio ponderado de tres notas.
DELIMITER //
CREATE PROCEDURE calcular_promedio_ponderado(nota1 DECIMAL(10, 2), nota2 DECIMAL(10, 2), nota3 DECIMAL(10, 2))
BEGIN
    DECLARE promedio DECIMAL(10, 2);
    SET promedio = (nota1 * 0.25) + (nota2 * 0.25) + (nota3 * 0.5);
    SELECT CONCAT('El promedio ponderado es ', promedio) AS Resultado;
END //
DELIMITER ;


-- Comentario: Este procedimiento calcula la ganancia según las condiciones dadas.
DELIMITER //
CREATE PROCEDURE calcular_ganancia(uva_tipo CHAR(1), uva_tamano INT)
BEGIN
    DECLARE precio_inicial DECIMAL(10, 2);
    DECLARE ganancia DECIMAL(10, 2);
    IF uva_tipo = 'A' THEN
        IF uva_tamano = 1 THEN
            SET precio_inicial = 20;
        ELSE
            SET precio_inicial = 30;
        END IF;
    ELSE
        IF uva_tamano = 1 THEN
            SET precio_inicial = -30;
        ELSE
            SET precio_inicial = -50;
        END IF;
    END IF;
    SET ganancia = precio_inicial / 100;
    SELECT CONCAT('La ganancia obtenida es ', ganancia, ' céntimos por kilo de uva.') AS Resultado;
END //
DELIMITER ;


-- Comentario: Este procedimiento muestra la suma del 1 al 5.
DELIMITER //
CREATE PROCEDURE suma_del_1_al_5()
BEGIN
    DECLARE suma INT;
    SET suma = 0;
    DECLARE i INT;
    SET i = 1;
    WHILE i <= 5 DO
        SET suma = suma + i;
        SET i = i + 1;
    END WHILE;
    SELECT CONCAT('La suma del 1 al 5 es ', suma) AS Resultado;
END //
DELIMITER ;

-- Comentario: Esta función calcula el valor de venta de un producto.
DELIMITER //
CREATE FUNCTION calcular_valor_venta(costo DECIMAL(10, 2), porcentaje_ganancia INT) RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE ganancia DECIMAL(10, 2);
    SET ganancia = costo * porcentaje_ganancia / 100;
    RETURN costo + ganancia;
END //
DELIMITER ;


-- Comentario: Esta función cuenta el número de productos en la tabla de productos.
DELIMITER //
CREATE FUNCTION contar_productos() RETURNS INT
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total FROM productos;
    RETURN total;
END //
DELIMITER ;


-- Comentario: Este trigger registra las actualizaciones de clientes en una tabla de auditoría.
DELIMITER //
CREATE TRIGGER auditar_actualizacion_cliente
AFTER UPDATE ON clientes
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_clientes (cliente_id, fecha_actualizacion)
    VALUES (NEW.id, NOW());
END //
DELIMITER ;



-- Comentario: Crear la base de datos "banco" y las tablas necesarias.
CREATE DATABASE IF NOT EXISTS banco;
USE banco;

CREATE TABLE IF NOT EXISTS cuentas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero_cuenta VARCHAR(20) NOT NULL,
    saldo DECIMAL(10, 2) NOT NULL
);

CREATE


/*EJERCICIO 1*/

DELIMITER //
CREATE PROCEDURE fibonacci(IN n INT)
BEGIN
  DECLARE i INT;
  DECLARE a INT DEFAULT 0;
  DECLARE b INT DEFAULT 1;
  DECLARE temp INT;

  SET i = 1;
  WHILE i <= n DO
    SELECT a;
    SET temp = a;
    SET a = b;
    SET b = temp + b;
    SET i = i + 1;
  END WHILE;
END //
DELIMITER ;

/*EJERCICIO 2*/
DELIMITER //
CREATE PROCEDURE add_provider(IN provider_name VARCHAR(255), IN provider_contact VARCHAR(255))
BEGIN
  INSERT INTO providers (name, contact) VALUES (provider_name, provider_contact);
END //
DELIMITER ;


/*EJERCICIO 3*/
DELIMITER //
CREATE PROCEDURE show_providers()
BEGIN
  SELECT * FROM providers;
END //
DELIMITER ;

/*EJERCICIO 4*/
DELIMITER //
CREATE PROCEDURE show_products_in_stock()
BEGIN
  SELECT * FROM products WHERE stock > 0;
END //
DELIMITER ;

/*EJERCICIO 5*/
DELIMITER //
CREATE PROCEDURE show_products_by_provider()
BEGIN
  SELECT providers.name, products.name
  FROM products
  JOIN providers ON products.provider_id = providers.id;
END //
DELIMITER ;

/*EJERCICIO 6*/
DELIMITER //
CREATE PROCEDURE classify_product_weight()
BEGIN
  SELECT name, 
  CASE 
    WHEN weight < 1.5 THEN 'liviano'
    WHEN weight > 5 THEN 'pesado'
    ELSE 'de peso medio'
  END as weight_category
  FROM products;
END //
DELIMITER ;

/*EJERCICIO 7*/
DELIMITER //
CREATE PROCEDURE calculate_profit_and_iva()
BEGIN
  UPDATE products
  SET p_beneficio = CASE
    WHEN cost < 10 THEN cost * 0.25
    ELSE cost * 0.09
  END,
  total_con_iva = cost + p_beneficio + (cost + p_beneficio) * 0.21;
END //
DELIMITER ;

/*EJERCICIO 8*/
DELIMITER //
CREATE PROCEDURE sort_random_numbers()
BEGIN
  DECLARE a, b, c, d, temp INT;
  SET a = FLOOR(1 + RAND() * 10);
  SET b = FLOOR(1 + RAND() * 10);
  SET c = FLOOR(1 + RAND() * 10);
  SET d = FLOOR(1 + RAND() * 10);

  IF a > b THEN SET temp = a; SET a = b; SET b = temp; END IF;
  IF a > c THEN SET temp = a; SET a = c; SET c = temp; END IF;
  IF a > d THEN SET temp = a; SET a = d; SET d = temp; END IF;
  IF b > c THEN SET temp = b; SET b = c; SET c = temp; END IF;
  IF b > d THEN SET temp = b; SET b = d; SET d = temp; END IF;
  IF c > d THEN SET temp = c; SET c = d; SET d = temp; END IF;

  SELECT a, b, c, d;
END //
DELIMITER ;

/*EJERCICIO 9*/
DELIMITER //
CREATE PROCEDURE delete_product(IN product_ref VARCHAR(255))
BEGIN
  DELETE FROM products WHERE reference = product_ref;
END //
DELIMITER ;

/*EJERCICIO 10*/
DELIMITER //
CREATE PROCEDURE sum_even_numbers(IN start INT, IN end INT)
BEGIN
  DECLARE i, sum INT DEFAULT 0;

  IF start > end THEN SET i = end; SET end = start; SET start = i; END IF;

  SET i = start;
  WHILE i <= end DO
    IF i % 2 = 0 THEN SET sum = sum + i; END IF;
    SET i = i + 1;
  END WHILE;

  SELECT sum;
END //
DELIMITER ;

/*EJERCICIO 11*/
DELIMITER //
CREATE PROCEDURE update_profit_and_iva()
BEGIN
  UPDATE products
  SET p_beneficio = cost * 0.10,
  total_con_iva = cost + p_beneficio + (cost + p_beneficio) * 0.21
  WHERE p_beneficio = cost * 0.09;
END //
DELIMITER ;

/*EJERCICIO 12*/
DELIMITER //
CREATE PROCEDURE show_prime_numbers()
BEGIN
  DECLARE i, j, isPrime INT;

  SET i = 2;
  WHILE i <= 100 DO
    SET isPrime = 1;
    SET j = 2;
    WHILE j * j <= i DO
      IF i % j = 0 THEN
        SET isPrime = 0;
      END IF;
      SET j = j + 1;
    END WHILE;
    IF isPrime = 1 THEN
      SELECT i;
    END IF;
    SET i = i + 1;
  END WHILE;
END //
DELIMITER ;

/*EJERCICIO 13*/
DELIMITER //
CREATE PROCEDURE sum_square_roots()
BEGIN
  DECLARE i FLOAT;
  DECLARE sum FLOAT DEFAULT 0;

  SET i = 1;
  WHILE i <= 23 DO
    SET sum = sum + SQRT(i);
    SET i = i + 1;
  END WHILE;

  SELECT sum;
END //
DELIMITER ;

/*EJERCICIO 14*/
DELIMITER //
CREATE PROCEDURE sum_table(IN n INT)
BEGIN
  DECLARE i INT;

  SET i = 0;
  WHILE i <= 10 DO
    SELECT CONCAT(n, ' + ', i, ' = ', n + i);
    SET i = i + 1;
  END WHILE;
END //
DELIMITER ;

/*EJERCICIO 15*/
DELIMITER //
CREATE FUNCTION Perimeter (r DOUBLE) RETURNS DOUBLE
BEGIN
  RETURN 2 * PI() * r;
END //
DELIMITER ;

/*EJERCICIO 16*/
DELIMITER //
CREATE FUNCTION Perimeter (r DOUBLE) RETURNS DOUBLE
BEGIN
  RETURN 2 * PI() * r;
END //
DELIMITER ;

/*EJERCICIO 17*/
DELIMITER //
CREATE FUNCTION CountProviders() RETURNS INT
BEGIN
  DECLARE total INT;
  SELECT COUNT(*) INTO total FROM providers;
  RETURN total;
END //
DELIMITER ;

/*EJERCICIO 18*/
DELIMITER //
CREATE TRIGGER low_stock
AFTER UPDATE ON products
FOR EACH ROW
BEGIN
  IF NEW.units < 3 THEN
    INSERT INTO logs (message) VALUES (CONCAT('Comprar ', NEW.name));
  END IF;
END //
DELIMITER ;


/*EJERCICIO 19*/
DELIMITER //
CREATE TRIGGER low_stock
AFTER UPDATE ON products
FOR EACH ROW
BEGIN
  IF NEW.units < 3 THEN
    INSERT INTO logs (message) VALUES (CONCAT('Comprar ', NEW.name));
  END IF;
END //
DELIMITER ;


/*EJERCICIO 20*/

DELIMITER //
CREATE TRIGGER new_product
AFTER INSERT ON products
FOR EACH ROW
BEGIN
  CALL show_products_by_provider();
END //
DELIMITER ;



/*EJERCICIO 21*/

DELIMITER //
CREATE TRIGGER new_product
AFTER INSERT ON products
FOR EACH ROW
BEGIN
  CALL show_products_by_provider();
END //
DELIMITER ;





-- SIMULACRO 3 --

-- Comentario: Este procedimiento calcula el cubo de un número dado.
DELIMITER //
CREATE PROCEDURE calcular_cubo(IN numero INT)
BEGIN
    DECLARE resultado INT;
    SET resultado = numero * numero * numero;
    SELECT CONCAT('El cubo de ', numero, ' es ', resultado) AS Resultado;
END //
DELIMITER ;


-- Comentario: Este procedimiento inserta un nuevo proveedor en la tabla de proveedores.
DELIMITER //
CREATE PROCEDURE insertar_proveedor(IN nombre_prov VARCHAR(255), IN direccion_prov VARCHAR(255))
BEGIN
    INSERT INTO proveedores (nombre, direccion) VALUES (nombre_prov, direccion_prov);
    SELECT CONCAT('Proveedor ', nombre_prov, ' insertado correctamente.') AS Resultado;
END //
DELIMITER ;

-- Comentario: Este procedimiento muestra los registros de la tabla personal.
DELIMITER //
CREATE PROCEDURE mostrar_personal()
BEGIN
    SELECT * FROM personal LIMIT 5;
END //
DELIMITER ;


-- Comentario: Este procedimiento muestra los productos con precio inferior a 1,50€.
DELIMITER //
CREATE PROCEDURE mostrar_productos_baratos()
BEGIN
    SELECT * FROM productos WHERE precio < 1.50 LIMIT 3;
END //
DELIMITER ;


-- Comentario: Este procedimiento muestra los productos con precio superior a 1,50€, agrupados por proveedores.
DELIMITER //
CREATE PROCEDURE mostrar_productos_caros()
BEGIN
    SELECT p.nombre, pr.nombre AS proveedor, p.precio
    FROM productos p
    JOIN proveedores pr ON p.id_proveedor = pr.id
    WHERE p.precio > 1.50;
END //
DELIMITER ;


-- Comentario: Este procedimiento asigna un sello de calidad según el valor numérico.
ALTER TABLE productos ADD COLUMN calidad VARCHAR(10);

DELIMITER //
CREATE PROCEDURE asignar_sello_calidad(IN producto_id INT, IN calidad_num INT)
BEGIN
    DECLARE calidad_texto VARCHAR(10);
    CASE
        WHEN calidad_num = 1 THEN SET calidad_texto = '*';
        WHEN calidad_num = 2 THEN SET calidad_texto = '**';
        WHEN calidad_num = 3 THEN SET calidad_texto = '***';
        WHEN calidad_num = 4 THEN SET calidad_texto = '****';
        WHEN calidad_num = 5 THEN SET calidad_texto = '*****';
    END CASE;
    UPDATE productos SET calidad = calidad_texto WHERE id = producto_id;
    SELECT CONCAT('Sello de calidad asignado al producto ', producto_id, ': ', calidad_texto) AS Resultado;
END //
DELIMITER ;


-- Comentario: Este procedimiento calcula el beneficio y el precio con IVA para los productos.
DELIMITER //
CREATE PROCEDURE calcular_beneficio_iva()
BEGIN
    UPDATE productos
    SET p_beneficio = CASE
        WHEN precio < 2 THEN precio * 0.3
        WHEN precio > 20 THEN precio * 0.15
        ELSE precio * 0.2
    END,
    total_con_iva = precio + (precio * 0.21);
    SELECT 'Beneficio y precio con IVA calculados correctamente.' AS Resultado;
END //
DELIMITER ;


-- Comentario: Este procedimiento muestra la suma de los números impares entre dos valores.
DELIMITER //
CREATE PROCEDURE suma_impares(IN num1 INT, IN num2 INT, OUT resultado INT)
BEGIN
    IF num1 >= num2 THEN
        SELECT 'El primer número debe ser menor que el segundo.' AS Resultado;
    ELSE
        SET resultado = 0;
        WHILE num1 <= num2 DO
            IF num1 % 2 = 1 THEN
                SET resultado = resultado + num1;
            END IF;
            SET num1 = num1 + 1;
        END WHILE;
        SELECT CONCAT('La suma de los números impares entre ', num1, ' y ', num2, ' es ', resultado) AS Resultado;
    END IF;
END //
DELIMITER ;



-- Comentario: Este procedimiento actualiza el beneficio de los productos al 35%.
DELIMITER //
CREATE PROCEDURE actualizar_beneficio()
BEGIN
    UPDATE productos SET p_beneficio = 0.35 WHERE p_beneficio = 0.30;
    SELECT 'Beneficio actualizado correctamente.' AS Resultado;
END //
DELIMITER ;


-- Comentario: Este procedimiento muestra los números primos hasta un valor dado.
DELIMITER //
CREATE PROCEDURE mostrar_primos(IN limite INT)
BEGIN
    DECLARE i INT;
    DECLARE j INT;
    DECLARE es_primo BOOLEAN;
    SET i = 2;
    WHILE i <= limite DO
        SET es_primo = TRUE;
        SET j = 2;
        WHILE j < i DO
            IF i % j = 0 THEN
                SET es_primo = FALSE;
            END IF;
            SET j = j + 1;
        END WHILE;
        IF es_primo THEN
            SELECT i AS Numero_Primo;
        END IF;
        SET i = i + 1;
    END WHILE;
END //
DELIMITER ;


-- Comentario: Este procedimiento calcula la suma de los números dados.
DELIMITER //
CREATE PROCEDURE suma_numeros()
BEGIN
    DECLARE resultado DECIMAL(10, 2);
    SET resultado = SQRT(5) + 23 - 7.456;
    SELECT CONCAT('La suma es ', resultado) AS Resultado;
END //
DELIMITER ;



-- Comentario: Este procedimiento muestra la tabla de potencias de un número dado.
DELIMITER //
CREATE PROCEDURE tabla_potencias(IN base INT)
BEGIN
    DECLARE exponente INT;
    DECLARE resultado INT;
    SET exponente = 0;
    WHILE exponente <= 10 DO
        SET resultado = POW(base, exponente);
        SELECT CONCAT(base, '^', exponente, ' = ', resultado) AS Potencia;
        SET exponente = exponente + 1;
    END WHILE;
END //
DELIMITER ;



-- Comentario: Esta función calcula el área de un círculo.
DELIMITER //
CREATE FUNCTION calcular_area_circulo(radio DECIMAL(10, 2)) RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE area DECIMAL(10, 2);
    SET area = PI() * POW(radio, 2);
    RETURN area;
END //
DELIMITER ;


-- Comentario: Este trigger crea un registro en la tabla ofertas_p_nuevo al insertar un producto.
DELIMITER //
CREATE TRIGGER insertar_oferta_nuevo_producto
AFTER INSERT ON productos
FOR EACH ROW
BEGIN
    INSERT INTO ofertas_p_nuevo (nombre_producto, pvp_reducido)
    VALUES (NEW.nombre, NEW.precio * 0.92);
END //
DELIMITER ;


-- Comentario: Este trigger almacena un producto eliminado en la tabla antiguo_producto.
DELIMITER //
CREATE TRIGGER almacenar_producto_eliminado
AFTER DELETE ON productos
FOR EACH ROW
BEGIN
    INSERT INTO antiguo_producto (nombre, precio)
    VALUES (OLD.nombre, OLD.precio);
END //
DELIMITER ;

-- Comentario: Este trigger almacena un nuevo proveedor en la tabla proveedor_novel con confianza "baja".
DELIMITER //
CREATE TRIGGER almacenar_proveedor_novel
AFTER UPDATE ON proveedores
FOR EACH ROW
BEGIN
    IF NEW.confianza = 'baja' THEN
        INSERT INTO proveedor_novel (nombre, confianza)
        VALUES (NEW.nombre, NEW.confianza);
    END IF;
END //
DELIMITER ;


-- Comentario: Este procedimiento ordena los parámetros de entrada de mayor a menor utilizando el método de la burbuja.
DELIMITER //
CREATE PROCEDURE ordenar_burbuja(INOUT a INT, INOUT b INT, INOUT c INT, INOUT d INT)
BEGIN
    DECLARE temp INT;
    IF a > b THEN
        SET temp = a;
        SET a = b;
        SET b = temp;
    END IF;
    IF b > c THEN
        SET temp = b;
        SET b = c;
        SET c = temp;
    END IF;
    IF c > d THEN
        SET temp = c;
        SET c = d;
        SET d = temp;
    END IF;
    IF a > b THEN
        SET temp = a;
        SET a = b;
        SET b = temp;
    END IF;
    IF b > c THEN
        SET temp = b;
        SET b = c;
        SET c = temp;
    END IF;
    IF a > b THEN
        SET temp = a;
        SET a = b;
        SET b = temp;
    END IF;
END //
DELIMITER ;


-- Comentario: Este procedimiento cuenta y muestra el número de productos con valor superior a 5€.
DELIMITER //
CREATE PROCEDURE contar_productos_caros(OUT total_productos INT)
BEGIN
    SELECT COUNT(*) INTO total_productos FROM productos WHERE precio > 5;
    SELECT CONCAT('Número de productos con valor superior a 5€: ', total_productos) AS Resultado;
END //
DELIMITER ;



/*
// Comentario: El siguiente JSON representa datos de ciudades y campos de fútbol.
{
    "ciudades": [
        {
            "nombre": "Madrid",
            "campos_futbol": [
                {
                    "nombre": "Estadio Santiago Bernabéu",
                    "capacidad": 81044
                },
                {
                    "nombre": "Wanda Metropolitano",
                    "capacidad": 68456
                }
            ]
        },
        {
            "nombre": "Barcelona",
            "campos_futbol": [
                {
                    "nombre": "Camp Nou",
                    "capacidad": 99354
                }
            ]
        }
    ]
}


// Comentario: El siguiente JSON representa datos de equipos y jugadores míticos.
{
    "equipos": [
        {
            "nombre": "Real Madrid",
            "jugadores": [
                {
                    "nombre": "Alfredo Di Stéfano",
                    "posicion": "Delantero"
                },
                {
                    "nombre": "Ferenc Puskás",
                    "posicion": "Delantero"
                }
            ]
        },
        {
            "nombre": "FC Barcelona",
            "jugadores": [
                {
                    "nombre": "Johan Cruyff",
                    "posicion": "Centrocampista"
                },
                {
                    "nombre": "Lionel Messi",
                    "posicion": "Delantero"
                }
            ]
        }
    ]
}

*/



