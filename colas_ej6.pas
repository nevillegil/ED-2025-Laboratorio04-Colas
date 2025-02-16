program colas_ej6;

uses
    sysutils, 
    uColaClientes;
    // Añade las unidades que necesites para resolver el ejercicio


function bool_to_str(b: boolean): string;
begin
    if b then
        bool_to_str := 'bien.'
    else
        bool_to_str := 'mal.';
end;



{ 6.2.1 Crea una cola de clientes, alguno de los cuales está inactivo }
procedure queue_example_1(var c: tCola);
begin
    WriteLn('No implementado');
end;


{ 6.2.1 Ahora, crea una cola de clientes con los mismos clientes que en el ejemplo anterior, 
pero sin clientes inactivos. Esta cola se usará para comprobar que el ejercicio funciona correctamente. }
procedure correct_queue_example_1(var c: tCola);
begin
    WriteLn('No implementado');
end;



{ 6.2.1 Crea una nueva cola de clientes, algunos de los cuales están inactivos }
procedure correct_queue_example_2(var c: tCola);
begin
    WriteLn('No implementado');
end;


{ 6.2.1 Ahora, crea una cola de clientes con los mismos clientes que en el ejemplo anterior,
pero sin clientes inactivos. Esta cola se usará para comprobar que el ejercicio funciona correctamente. }
procedure queue_example_2(var c: tCola);
begin
    WriteLn('No implementado');
end;


{ 6.3 Desarrolla un procedimiento en el fichero `cola_ej5.pas` que reciba una cola de clientes 
y elimine todos los clientes que no están activos. }
procedure eliminar_clientes_inactivos(var c: tCola);
begin
    WriteLn('No implementado');
end;



procedure test_eliminar_clientes_inactivos;
var
    c, cCorrecta: tCola;
    resultado: string;
begin
    queue_example_1(c);
    correct_queue_example_1(cCorrecta);
    WriteLn(uColaClientes.toString(c));
    eliminar_clientes_inactivos(c);
    resultado := uColaClientes.toString(c);
    WriteLn(resultado);
    WriteLn('Test 1: ', resultado, ' = ', uColaClientes.toString(cCorrecta) , ' El ejercicio funciona ', bool_to_str(resultado = uColaClientes.toString(cCorrecta)));


    queue_example_2(c);
    correct_queue_example_2(cCorrecta);
    WriteLn(uColaClientes.toString(c));
    eliminar_clientes_inactivos(c);
    resultado := uColaClientes.toString(c);
    WriteLn(resultado);
    WriteLn('Test 2: ', resultado, ' = ', uColaClientes.toString(cCorrecta) , ' El ejercicio funciona ', bool_to_str(resultado = uColaClientes.toString(cCorrecta)));

end;

begin
    WriteLn('Pruebas de eliminar clientes inactivos');
    WriteLn('--------------------------------------');
    test_eliminar_clientes_inactivos;
    readln; 
end.