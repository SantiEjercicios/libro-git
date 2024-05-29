use cdm;

/*Borro el procedimiento si existe*/
drop procedure if exists ordenar_num;

/*creamos el procedimiento*/
delimiter $
create procedure ordenar_num(in n1 int,in n2 int, in n3 int,in n4 int)
begin
/*declaramos 2 acumulador para cada numero*/
declare acu1 int default(0);
declare acu2 int default(0);

set acu1=0;
set acu2=0;
/*creamos un bucle que se haga hasta que este ordenado de la forma que queremos*/
bucle1:repeat
	/*comparamos el n1 con el n2*/
	if n2>n1  then
		set acu1=n2;
		set acu2=n1;
		set n1=acu1;
		set n2=acu2;
	end if;
	/*comparamos el n2 con el n3*/
	if n3>n2 then
		set acu1=n3;
		set acu2=n2;
		set n2=acu1;
		set n3=acu2;
	end if;
	/*comparamos el n3 con el n4*/
	if n4>n3 then
		set acu1=n4;
		set acu2=n3;
		set n3=acu1;
		set n4=acu2;
	end if ;
	/*ponemos las condiciones del bucle*/
	until n1>=n2 and (n2>=n3 and n3>=n4)
end repeat bucle1;
/*ponemos lo que vamos a ver*/
select n1 "el",n2 "orden",n3 "es",n4 "este";
end $
delimiter ;
/*llamamos al procedimiento*/
call ordenar_num(2,4,7,9);