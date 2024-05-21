DROP DATABASE IF EXISTS EJ14;

CREATE DATABASE EJ14;
USE EJ14;

DROP TABLE IF EXISTS SITIO;

CREATE TABLE SITIO (
    url VARCHAR(100),
    cantpaginas LONG,
    estrellas TINYINT,
    PRIMARY KEY (url)
);

INSERT INTO SITIO VALUES
    ("https://docs.oracle.com/javase/7/docs/api/java/util/Arrays.html", 5000000, 3),
    ("https://docs.oracle.com/javase/7/docs/api/javArrays.html", 25005556, 2),
    ("https://docs.oracle.com/java/util/Arrays.html", 60015400, 1),
    ("https://il/Arrays.html", 896448547, 5);
DROP FUNCTION IF EXISTS ESTRELLAS;

DELIMITER $

CREATE FUNCTION estrellas(ESTR INT, VALOR1 VARCHAR(20))
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN

/*CON LOS IF COMPARAMOS EL VALOR Y PONDREMOS LAS ESTRELLAS CORRESONDIENTES*/
    IF ESTR = 1 THEN
        SET VALOR1 = "*";
    ELSEIF ESTR = 2 THEN
        SET VALOR1 = "**";
    ELSEIF ESTR = 3 THEN
        SET VALOR1 = "***";
    ELSEIF ESTR = 4 THEN
        SET VALOR1 = "****";
    ELSEIF ESTR = 5 THEN
        SET VALOR1 = "*****";
    ELSE
        SET VALOR1 = "NO SE HA INTRODUCIDO NINGÚN NÚMERO DEL 1-5";
    END IF;
    RETURN VALOR1;
END $;

DELIMITER ;

SELECT estrellas(3,@RESULT);
DROP FUNCTION IF EXISTS VISITAS;
DELIMITER $
CREATE FUNCTION VISITAS(VST INT, VALOR2 VARCHAR(20))
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN

/*AL IGUAL QUE EL ANTERIOR USAMOS IF PARA COMPARAR LOS VALORES*/
    IF VST <20000000  THEN
        SET VALOR2 = "tráfico bajo";
	ELSEIF VST <40000000 THEN
		SET VALOR2 = "tráfico medio";
	ELSEIF VST > 40000000 THEN
		SET VALOR2 = "tráfico alto";
    END IF;
    RETURN VALOR2;
END $;

DELIMITER ;
SELECT VISITAS(60000,@RESULT);



DROP FUNCTION IF EXISTS DEVUELVEURL;
DELIMITER $

CREATE FUNCTION DEVUELVEURL(VALOR3 VARCHAR(200))
RETURNS VARCHAR(200)
DETERMINISTIC
BEGIN

/*USAMOS UN SELECT DENTRO DE OTRO SELECT CON LA FUNCION MAX PARA SACAR EL MAXIMO VALOR Y OBTENER EL URL*/
    SELECT url INTO VALOR3 FROM SITIO WHERE cantpaginas = (SELECT MAX(cantpaginas) FROM SITIO);
    RETURN VALOR3;
END $

DELIMITER ;

SELECT DEVUELVEURL(@RESULT);