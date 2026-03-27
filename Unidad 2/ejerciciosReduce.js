// Nombre: Amezcua Kevin Elias
// Programas con Reduce

console.log('-------------------- PROGRAMAS REDUCE --------------------');

// 1. Promedio de calificaciones
const calificaciones = [89, 92, 75, 70, 100];
const sumaCalificaciones = calificaciones.reduce((acc, cal) => acc + cal, 0);
const promedio = sumaCalificaciones / calificaciones.length;

console.log('1. Promedio de calificaciones');
console.log('Calificaciones = [' + calificaciones + ']');
console.log('Promedio = ' + promedio);

console.log();

// 2. Encontrar el número mayor en un arreglo
const numeros = [16, 44, 7, 89, 80, 59];
const numeroMayor = numeros.reduce((mayor, num) => {
    return num > mayor ? num : mayor;
});

console.log('2. Encontrar el número mayor en un arreglo');
console.log('Números = [' + numeros + ']');
console.log('Número mayor = ' + numeroMayor);

console.log();

// 3. Calcular el precio total del carrito de compras
const carrito = [
    {producto: "Laptop", precio: 16000},
    {producto: "Mouse", precio: 680},
    {producto: "Teclado", precio: 1350},
    {producto: "Monitor", precio: 4500}
];

const totalCarrito = carrito.reduce((total, item) => total + item.precio, 0);

console.log('3. Calcular el precio total del carrito de compras');
console.log('Carrito = ', carrito);
console.log('Total a pagar = ' + totalCarrito);