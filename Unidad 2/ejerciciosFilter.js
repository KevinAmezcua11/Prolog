// Nombre: Amezcua Kevin Elias
// Programas con Filter

console.log('-------------------- PROGRAMAS FILTER --------------------');

// 1. Filtrar productos disponibles
const productos = [
    {nombre: "Laptop", precio: 12000, stock: 5},
    {nombre: "Mouse", precio: 250, stock: 0},
    {nombre: "Teclado", precio: 600, stock: 8},
    {nombre: "Monitor", precio: 3500, stock: 0}
];

const disponibles = productos.filter(prod => prod.stock > 0);

console.log('1. Filtrar productos disponibles');
console.log('Productos originales = ', productos);
console.log('Productos disponibles = ', disponibles);

console.log();

// 2. Filtrar personas mayores de edad
const edades = [9, 18, 68, 16, 30, 43, 22];
const mayores = edades.filter(edad => edad >= 18);

console.log('2. Filtrar personas mayores de edad');
console.log('Edades = [' + edades + ']');
console.log('Mayores de edad = [' + mayores + ']');

console.log();

// 3. Filtrar estudiantes aprobados
const estudiantes = [
    {nombre: "Kevin", calificacion: 72},
    {nombre: "Juan", calificacion: 43},
    {nombre: "Oscar", calificacion: 95},
    {nombre: "Elias", calificacion: 65}
];

const aprobados = estudiantes.filter(est => est.calificacion >= 70);

console.log('3. Filtrar estudiantes aprobados');
console.log('Estudiantes = ', estudiantes);
console.log('Estudiantes aprobados = ', aprobados);
