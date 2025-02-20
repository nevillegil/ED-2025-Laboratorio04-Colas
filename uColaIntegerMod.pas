unit uColaIntegerMod;

interface

type
    // Estructura del nodo
    nodo = record
        info: integer; // Información almacenada en el nodo
        sig: ^nodo;   // Puntero al siguiente nodo
    end;
    
    // Estructura de la cola
    tCola = record
        first, last: ^nodo; // Punteros al primer y último nodo
        contador: integer;  
    end;

{ --- Operaciones básicas de la cola --- }

procedure initialize_queue(var c: tCola);
function empty_queue(c: tCola): boolean;
function first(c: tCola): integer;
function last(c: tCola): integer;
procedure enqueue(var c: tCola; x: integer);
procedure dequeue(var c: tCola);

{  --- Operaciones adicionales de la cola --- }

function toString(c: tCola): string;
procedure clear(var c: tCola);
function num_elems(c: tCola): integer;
procedure copy(c : tCola; var c2: tCola);


implementation

uses SysUtils;

{ Implementación de las operaciones básicas de la cola }

// Inicializar la cola
procedure initialize_queue(var c: tCola);
begin
    c.first := nil; // Establecer el primer nodo a nil
    c.last := nil;  // Establecer el último nodo a nil
    c.contador := 0; // Inicializar el contador a 0
end;

// Agregar un elemento a la cola
procedure enqueue(var c: tCola; x: integer);
var
    nuevo: ^nodo; 
begin
    new(nuevo); 
    nuevo^.info := x; 
    nuevo^.sig := nil; 
    if empty_queue(c) then
        c.first := nuevo 
    else
        c.last^.sig := nuevo; 
    c.last := nuevo; 
    c.contador := c.contador + 1; 
end

// Eliminar un elemento de la cola
procedure dequeue(var c: tCola);
var
    aux: ^nodo; // Nodo auxiliar
begin
    if not empty_queue(c) then
    begin
        aux := c.first; 
        c.first := c.first^.sig; 
        dispose(aux); 
        c.contador := c.contador - 1; 
        if c.first = nil then
            c.last := nil; 
    end;

// Limpiar la cola
procedure clear(var c: tCola);
begin
    while not empty_queue(c) do
        dequeue(c); 
    c.contador := 0; 
end

// Verificar si la cola está vacía
function empty_queue(c: tCola): boolean;
begin
    empty_queue := c.first = nil; // Devolver true si el primer nodo es nil
end;

// Obtener el primer elemento de la cola
function first(c: tCola): integer;
begin
    if not empty_queue(c) then
        first := c.first^.info // Devolver la información del primer nodo
end;

// Obtener el último elemento de la cola
function last(c: tCola): integer;
begin
    if not empty_queue(c) then
        last := c.last^.info // Devolver la información del último nodo
end;



// Agregar un elemento a la cola
procedure enqueue(var c: tCola; x: integer);
var
    nuevo: ^nodo; // Nuevo nodo
begin
    new(nuevo); // Asignar memoria para el nuevo nodo
    nuevo^.info := x; // Establecer la información del nuevo nodo
    nuevo^.sig := nil; // Establecer el siguiente nodo a nil
    if empty_queue(c) then
        c.first := nuevo // Establecer el primer nodo al nuevo nodo
    else
        c.last^.sig := nuevo; // Establecer el siguiente nodo del último nodo al nuevo nodo
    c.last := nuevo; // Establecer el último nodo al nuevo nodo
end;

// Eliminar un elemento de la cola
procedure dequeue(var c: tCola);
var
    aux: ^nodo; // Nodo auxiliar
begin
    if not empty_queue(c) then
    begin
        aux := c.first; // Establecer el nodo auxiliar al primer nodo
        c.first := c.first^.sig; // Establecer el primer nodo al siguiente nodo
        dispose(aux); // Liberar la memoria del nodo auxiliar
        if c.first = nil then
            c.last := nil; // Establecer el último nodo a nil si la cola está vacía
    end;
end;


{ Implementación de las operaciones adicionales de la cola }


// Convertir la cola a una cadena de caracteres
function toString(c: tCola): string;
var
    aux: ^nodo; // Nodo auxiliar
    s: string;  // Cadena de caracteres
begin
    aux := c.first; // Establecer el nodo auxiliar al primer nodo
    s := '['; // Inicializar la cadena de caracteres
    while aux <> nil do
    begin
        s := s + IntToStr(aux^.info); // Agregar la información del nodo a la cadena
        aux := aux^.sig; // Avanzar al siguiente nodo
        if aux <> nil then
            s := s + ', '; // Agregar una coma si no es el último nodo
    end;
    s := s + ']'; // Agregar el corchete de cierre
    toString := s; // Devolver la cadena de caracteres
end;

// Limpiar la cola
procedure clear(var c: tCola);
begin
    while not empty_queue(c) do
        dequeue(c); // Eliminar todos los elementos de la cola
end;


// Contar el número de elementos de la cola
function num_elems(c: tCola): integer;
var
    aux: ^nodo; // Nodo auxiliar
    count: integer; // Contador
begin
    aux := c.first; // Establecer el nodo auxiliar al primer nodo
    count := 0; // Inicializar el contador
    while aux <> nil do
    begin
        count := count + 1; // Incrementar el contador
        aux := aux^.sig; // Avanzar al siguiente nodo
    end;
    num_elems := count; // Devolver el contador
end;

// Copiar una cola
procedure copy(c : tCola; var c2: tCola);
var
    aux: ^nodo; // Nodo auxiliar
begin
    initialize_queue(c2); // Inicializar la cola c2
    aux := c.first; // Establecer el nodo auxiliar al primer nodo de c
    while aux <> nil do
    begin
        enqueue(c2, aux^.info); // Agregar el elemento del nodo auxiliar a c2
        aux := aux^.sig; // Avanzar al siguiente nodo
    end;
end;


end.
