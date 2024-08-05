import os
import csv
import conexion

conexion = conexion.conexion()

def mostrar_menu():
    print("\nMenú:")
    print("1. Borrar modelo")
    print("2. Crear modelo")
    print("3. Extraer informacion")
    print("4. Cargar informacion")
    print("5. Realizar consultas")
    print("6. Salir")

def main():
    while True:
        mostrar_menu()
        eleccion = input("Elige una opción: ")

        if eleccion == "1":
            print("Borrando modelo...")
            os.system("sqlcmd -S JOSEPH\\SQLEXPRESS -d ss2_practica1 -i C:\\Users\\jefer\\Documents\\borrar.sql")
            print("Modelo borrado")

        elif eleccion == "2":
            print("Creando modelo...")
            os.system("sqlcmd -S JOSEPH\\SQLEXPRESS -d ss2_practica1 -i C:\\Users\\jefer\\Documents\\modelo.sql")
            print("Modelo creado")

        elif eleccion == "3":
            print("Extraccion de informacion...")
            path = input("Ingrese la ruta del archivo: ")
            with open(path, "r", encoding='utf-8') as file:
                lines = csv.reader(file)
                header = next(lines)
                for line in lines:
                    try:
                        query = "INSERT INTO ss2_practica1.dbo.temporal VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"
                        cursor = conexion.cursor()
                        cursor.execute(query,line)
                        cursor.commit()
                        cursor.close()
                    except Exception as e:
                        continue

            print("Inforacion extraida correctamente")

        elif eleccion == "4":
            print("Cargando informacion al modelo...")
            os.system("sqlcmd -S JOSEPH\\SQLEXPRESS -d ss2_practica1 -i C:\\Users\\jefer\\Documents\\cargar.sql")
            print("Informacion cargada correctamente")
        
        elif eleccion == "5":
            submenu()

        elif eleccion == "6":
            print("Saliendo...")
            break
        else:
            print("Opción no válida. Inténtalo de nuevo.")

def submenu():
    while True:
        print("\nSubmenú:")
        print("1. Consulta 1")
        print("2. Consulta 2")
        print("3. Consulta 3")
        print("4. Consulta 4")
        print("5. Consulta 5")
        print("6. Consulta 6")
        print("7. Consulta 7")
        print("8. Consulta 8")
        print("9. Consulta 9")
        print("10. Consulta 10")
        print("11. Volver al Menú Principal")
        
        opcion = input("Selecciona una opción: ")
        
        if opcion == '1':
            print("Realizando consulta...")
            print(os.system("sqlcmd -S JOSEPH\\SQLEXPRESS -d ss2_practica1 -i C:\\Users\\jefer\\Documents\\consulta1.sql"))
            os.system("sqlcmd -S JOSEPH\\SQLEXPRESS -d ss2_practica1 -i C:\\Users\\jefer\\Documents\\consulta1.sql -o C:\\Users\\jefer\\Documents\\consulta1.txt")
            print("Consutla terminada")

        elif opcion == '2':
            print("Realizando consulta...")
            print(os.system("sqlcmd -S JOSEPH\\SQLEXPRESS -d ss2_practica1 -i C:\\Users\\jefer\\Documents\\consulta2.sql"))
            os.system("sqlcmd -S JOSEPH\\SQLEXPRESS -d ss2_practica1 -i C:\\Users\\jefer\\Documents\\consulta2.sql -o C:\\Users\\jefer\\Documents\\consulta2.txt")
            print("Consutla terminada")
        
        elif opcion == '3':
            print("Realizando consulta...")
            print(os.system("sqlcmd -S JOSEPH\\SQLEXPRESS -d ss2_practica1 -i C:\\Users\\jefer\\Documents\\consulta3.sql"))
            os.system("sqlcmd -S JOSEPH\\SQLEXPRESS -d ss2_practica1 -i C:\\Users\\jefer\\Documents\\consulta3.sql -o C:\\Users\\jefer\\Documents\\consulta3.txt")
            print("Consutla terminada")

        elif opcion == '4':
            print("Realizando consulta...")
            print(os.system("sqlcmd -S JOSEPH\\SQLEXPRESS -d ss2_practica1 -i C:\\Users\\jefer\\Documents\\consulta4.sql"))
            os.system("sqlcmd -S JOSEPH\\SQLEXPRESS -d ss2_practica1 -i C:\\Users\\jefer\\Documents\\consulta4.sql -o C:\\Users\\jefer\\Documents\\consulta4.txt")
            print("Consutla terminada")

        elif opcion == '5':
            print("Realizando consulta...")
            print(os.system("sqlcmd -S JOSEPH\\SQLEXPRESS -d ss2_practica1 -i C:\\Users\\jefer\\Documents\\consulta5.sql"))
            os.system("sqlcmd -S JOSEPH\\SQLEXPRESS -d ss2_practica1 -i C:\\Users\\jefer\\Documents\\consulta5.sql -o C:\\Users\\jefer\\Documents\\consulta5.txt")
            print("Consutla terminada")

        elif opcion == '6':
            print("Realizando consulta...")
            print(os.system("sqlcmd -S JOSEPH\\SQLEXPRESS -d ss2_practica1 -i C:\\Users\\jefer\\Documents\\consulta6.sql"))
            os.system("sqlcmd -S JOSEPH\\SQLEXPRESS -d ss2_practica1 -i C:\\Users\\jefer\\Documents\\consulta6.sql -o C:\\Users\\jefer\\Documents\\consulta6.txt")
            print("Consutla terminada")
        
        elif opcion == '7':
            print("Realizando consulta...")
            print(os.system("sqlcmd -S JOSEPH\\SQLEXPRESS -d ss2_practica1 -i C:\\Users\\jefer\\Documents\\consulta7.sql"))
            os.system("sqlcmd -S JOSEPH\\SQLEXPRESS -d ss2_practica1 -i C:\\Users\\jefer\\Documents\\consulta7.sql -o C:\\Users\\jefer\\Documents\\consulta7.txt")
            print("Consutla terminada")

        elif opcion == '8':
            print("Realizando consulta...")
            print(os.system("sqlcmd -S JOSEPH\\SQLEXPRESS -d ss2_practica1 -i C:\\Users\\jefer\\Documents\\consulta8.sql"))
            os.system("sqlcmd -S JOSEPH\\SQLEXPRESS -d ss2_practica1 -i C:\\Users\\jefer\\Documents\\consulta8.sql -o C:\\Users\\jefer\\Documents\\consulta8.txt")
            print("Consutla terminada")

        elif opcion == '9':
            print("Realizando consulta...")
            print(os.system("sqlcmd -S JOSEPH\\SQLEXPRESS -d ss2_practica1 -i C:\\Users\\jefer\\Documents\\consulta9.sql"))
            os.system("sqlcmd -S JOSEPH\\SQLEXPRESS -d ss2_practica1 -i C:\\Users\\jefer\\Documents\\consulta9.sql -o C:\\Users\\jefer\\Documents\\consulta9.txt")
            print("Consutla terminada")
        
        elif opcion == '10':
            print("Realizando consulta...")
            print(os.system("sqlcmd -S JOSEPH\\SQLEXPRESS -d ss2_practica1 -i C:\\Users\\jefer\\Documents\\consulta10.sql"))
            os.system("sqlcmd -S JOSEPH\\SQLEXPRESS -d ss2_practica1 -i C:\\Users\\jefer\\Documents\\consulta10.sql -o C:\\Users\\jefer\\Documents\\consulta10.txt")
            print("Consutla terminada")

        elif opcion == '11':
            break
        else:
            print("Opción no válida. Inténtalo de nuevo.")

if __name__ == "__main__":
    main()
