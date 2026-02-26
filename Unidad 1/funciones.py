# Nombre: Kevin Elias Amezcua
# Sistema de Peliculas - Estilo Estructurado

peliculas = []

# Agregar nueva pelicula
def agregar_pelicula():
    titulo = input("Titulo: ")
    genero = input("Genero: ")
    anio = input("Anio: ")

    pelicula = {
        "titulo": titulo,
        "genero": genero,
        "anio": anio,
        "calificaciones": []
    }

    peliculas.append(pelicula)
    print("Pelicula agregada")

# Mostrar todas las peliculas
def mostrar_peliculas():
    if len(peliculas) == 0:
        print("No hay peliculas")
        return

    for i in range(len(peliculas)):
        p = peliculas[i]
        print(i + 1, "-", p["titulo"], "-", p["genero"], "-", p["anio"])

# Buscar peliculas por genero
def buscar_genero():
    genero = input("Genero a buscar: ")
    encontrado = False

    for p in peliculas:
        if p["genero"].lower() == genero.lower():
            print(p["titulo"], "-", p["anio"])
            encontrado = True

    if not encontrado:
        print("No se encontraron peliculas")

# Calificar una pelicula
def calificar_pelicula():
    if len(peliculas) == 0:
        print("No hay peliculas")
        return

    mostrar_peliculas()
    numero = int(input("Numero de pelicula: "))

    if 1 <= numero <= len(peliculas):
        nota = int(input("Calificacion (1-5): "))
        if 1 <= nota <= 5:
            peliculas[numero - 1]["calificaciones"].append(nota)
            print("Calificacion agregada")
        else:
            print("Calificacion invalida")
    else:
        print("Numero incorrecto")

# Calcular promedio de una lista
def promedio(lista):
    if len(lista) == 0:
        return 0

    suma = 0
    for n in lista:
        suma += n

    return suma / len(lista)

# Mostrar la mejor pelicula
def mejor_pelicula():
    if len(peliculas) == 0:
        print("No hay peliculas")
        return

    mejor = None
    mejor_prom = 0

    for p in peliculas:
        prom = promedio(p["calificaciones"])
        if prom > mejor_prom:
            mejor = p
            mejor_prom = prom

    if mejor:
        print("Mejor pelicula:", mejor["titulo"])
        print("Promedio:", mejor_prom)
    else:
        print("Sin calificaciones")

# Menu principal
def menu():
    while True:
        print("\n1. Agregar")
        print("2. Mostrar")
        print("3. Buscar por genero")
        print("4. Calificar")
        print("5. Mejor pelicula")
        print("6. Salir")

        opcion = input("Opcion: ")

        if opcion == "1":
            agregar_pelicula()
        elif opcion == "2":
            mostrar_peliculas()
        elif opcion == "3":
            buscar_genero()
        elif opcion == "4":
            calificar_pelicula()
        elif opcion == "5":
            mejor_pelicula()
        elif opcion == "6":
            break
        else:
            print("Opcion invalida")

menu()