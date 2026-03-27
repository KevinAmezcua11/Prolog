// Nombre: Amezcua Kevin Elias
// Programas con Map

console.log('-------------------- PROGRAMAS MAP --------------------');

// 1. Conversión de números a su valor al cuadrado
const numeros = Array.from({length: 8}, () => parseInt(Math.random()*50));
const cuadrados = numeros.map(num => num * num);

console.log('1. Conversión de números a su valor al cuadrado');
console.log('Array Original = [' + numeros + ']');
console.log('Array al Cuadrado = [' + cuadrados + ']');

console.log();

// 2. Conversión de temperaturas (Celsius → Fahrenheit)
const celsius = [0, 10, 20, 28, 30, 37];
const fahrenheit = celsius.map(temp => (temp * 9/5) + 32);

console.log('2. Conversión de temperaturas (Celsius → Fahrenheit)');
console.log('Temperaturas en Celsius = [' + celsius + ']');
console.log('Temperaturas en Fahrenheit = [' + fahrenheit + ']');

console.log();

// 3. Cálculo de precios con IVA aplicado
const precios = [265.3, 34.16, 89.70, 1236.98, 347.12];
const iva = precios.map(precio => precio + (precio * 0.16));

console.log('3. Cálculo de precios con IVA aplicado');
console.log('Array Original = [' + precios + ']');
console.log('Array con IVA (16%) = [' + iva + ']');
