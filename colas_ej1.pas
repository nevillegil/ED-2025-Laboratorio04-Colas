program colas_ej1;

uses uColaInteger;

var
    cola: tCola;

begin
    // Ejercicio 1.2: Crear una cola, añadir elementos y mostrar la cola
    // 1.2.1 Crear una cola
    crearCola(cola);

    // 1.2.2 Añadir los elementos 1, 2, 3, 4 y 5 a la cola
    anadir(cola, 1);
    anadir(cola, 2);
    anadir(cola, 3);
    anadir(cola, 4);
    anadir(cola, 5);

    // 1.2.3 Mostrar los elementos de la cola
    mostrarCola(cola);

    // Ejercicio 1.3: Trabajar con el primer y último elemento de la cola
    // 1.3.1 Mostrar el primer elemento de la cola
    writeln('Primer elemento: ', primero(cola));

    // 1.3.2 Mostrar el último elemento de la cola
    writeln('Último elemento: ', ultimo(cola));

    // 1.3.3 Mostrar la diferencia entre el primer y el último elemento de la cola (primero - último)
    writeln('Diferencia (primero - último): ', primero(cola) - ultimo(cola));

    // Ejercicio 1.4: Eliminar elementos de la cola
    // 1.4.1. Muestra el número de elementos de la cola.
    writeln('Número de elementos: ', numElementos(cola));

    // 1.4.2 Eliminar el primer elemento de la cola
    eliminar(cola);

    // 1.4.3 Mostrar los elementos de la cola
    mostrarCola(cola);

    // 1.4.4. Muestra el número de elementos de la cola.
    writeln('Número de elementos: ', numElementos(cola));

    // 1.4.5 Eliminar todos los elementos de la cola
    while not esVacia(cola) do
        eliminar(cola);

    // 1.4.6 Mostrar los elementos de la cola
    mostrarCola(cola);

    // 1.4.7. Muestra el número de elementos de la cola.
    writeln('Número de elementos: ', numElementos(cola));

    // Ejercicio 1.5: Consultar si la cola está vacía
    // 1.5.1 Consultar si la cola está vacía
    if esVacia(cola) then
        writeln('La cola está vacía')
    else
        writeln('La cola no está vacía');

    // 1.5.2 Añadir el elemento 1 a la cola
    anadir(cola, 1);

    // 1.5.3 Consultar si la cola está vacía
    if esVacia(cola) then
        writeln('La cola está vacía')
    else
        writeln('La cola no está vacía');
end.
