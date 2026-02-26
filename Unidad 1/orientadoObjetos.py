# Nombre: Kevin Elias Amezcua
# Sistema de Peliculas - Programacion Orientada a Objetos

# Clase Película
class Pelicula:
    def __init__(self, titulo, genero, anio):
        self.titulo = titulo
        self.genero = genero
        self.anio = anio
        self.calificaciones = []

    def agregar_calificacion(self, nota):
        if 1 <= nota <= 5:
            self.calificaciones.append(nota)
            return True
        return False

    def promedio(self):
        if len(self.calificaciones) == 0:
            return 0

        suma = 0
        for n in self.calificaciones:
            suma += n

        return suma / len(self.calificaciones)

    def mostrar(self):
        return self.titulo + " - " + self.genero + " - " + self.anio

# Clase Catalogo
class Catalogo:
    def __init__(self):
        self.peliculas = []

    def agregar(self, pelicula):
        self.peliculas.append(pelicula)

    def mostrar(self):
        if len(self.peliculas) == 0:
            print("No hay peliculas")
            return

        for i in range(len(self.peliculas)):
            print(i + 1, "-", self.peliculas[i].mostrar())

    def buscar_genero(self, genero):
        encontrado = False
        for p in self.peliculas:
            if p.genero.lower() == genero.lower():
                print(p.mostrar())
                encontrado = True

        if not encontrado:
            print("No se encontraron peliculas")

    def mejor(self):
        if len(self.peliculas) == 0:
            return None

        mejor = None
        mejor_prom = 0

        for p in self.peliculas:
            prom = p.promedio()
            if prom > mejor_prom:
                mejor = p
                mejor_prom = prom

        return mejor

def menu():
    catalogo = Catalogo()

    while True:
        print("\n1. Agregar")
        print("2. Mostrar")
        print("3. Buscar por genero")
        print("4. Calificar")
        print("5. Mejor pelicula")
        print("6. Salir")

        opcion = input("Opcion: ")

        if opcion == "1":
            titulo = input("Titulo: ")
            genero = input("Genero: ")
            anio = input("Anio: ")
            nueva = Pelicula(titulo, genero, anio)
            catalogo.agregar(nueva)
            print("Pelicula agregada")

        elif opcion == "2":
            catalogo.mostrar()

        elif opcion == "3":
            genero = input("Genero a buscar: ")
            catalogo.buscar_genero(genero)

        elif opcion == "4":
            if len(catalogo.peliculas) == 0:
                print("No hay peliculas")
                continue

            catalogo.mostrar()
            numero = int(input("Numero: "))

            if 1 <= numero <= len(catalogo.peliculas):
                nota = int(input("Calificacion (1-5): "))
                if catalogo.peliculas[numero - 1].agregar_calificacion(nota):
                    print("Calificacion agregada")
                else:
                    print("Calificacion invalida")
            else:
                print("Numero incorrecto")

        elif opcion == "5":
            mejor = catalogo.mejor()
            if mejor:
                print("Mejor pelicula:", mejor.titulo)
                print("Promedio:", mejor.promedio())
            else:
                print("No hay peliculas")

        elif opcion == "6":
            break

        else:
            print("Opcion invalida")

menu()