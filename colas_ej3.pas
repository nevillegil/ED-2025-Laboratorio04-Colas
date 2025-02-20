program colas_ej3;

uses
    sysutils,
    uColaInteger;

function bool_to_str(b: boolean): string;
begin
    if b then
        bool_to_str := 'bien.'
    else
        bool_to_str := 'mal.';
end;


{ 
    Ejercicio 3: Mostrar el contenido de una cola en orden inverso

    Desarrollar un subprograma que reciba una cola y muestre su contenido en orden inverso.

    Entradas: cola de enteros

    Salida: ninguna

    Condiciónes: 
        - La cola debe mantener su contenido y orden original
        - Complejidad de tiempo esperada: O(n)
        - Complejidad de espacio auxiliar esperada: 
            - O(1): ¡Increíble! No se necesita espacio adicional para resolver este problema.
            - O(n):  Muy bien, aunque se puede mejorar.
            - Superior a O(n): ¡Vaya! ¿No crees que se puede hacer mejor?

    Ejemplos: 
        - (cola: [1, 2, 3, 4, 5]) => 5 4 3 2 1
}
procedure mostrar_inverso_pila(c: tCola);
var
    pila: tStack;
    elem: integer;
begin
    initialize_stack(pila);

    { Pasamos todos los elementos de la cola a la pila }
    while not isEmptyQueue(c) do
    begin
        dequeue(c, elem);
        push(pila, elem);
    end;

    { Mostramos los elementos de la pila, que están en orden inverso }
    while not isEmptyStack(pila) do
    begin
        pop(pila, elem);
        Write(elem, ' ');
    end;

    { Volvemos a pasar los elementos de la pila a la cola para mantener el orden original }
    while not isEmptyStack(pila) do
    begin
        pop(pila, elem);
        enqueue(c, elem);
    end;
end
end;



var
    c: tCola;


begin
    initialize_queue(c);

    enqueue(c, 1);
    enqueue(c, 2);
    enqueue(c, 3);
    enqueue(c, 4);
    enqueue(c, 5);

    WriteLn('Cola original:');
    WriteLn(toString(c));

    WriteLn;
    WriteLn('Mostrar inverso con pila:');
    mostrar_inverso_pila(c);
    WriteLn;
    WriteLn('Cola original:');
    WriteLn(toString(c));
end.
