import pyodbc

def conexion():
    try:
        connection = pyodbc.connect('DRIVER={SQL Server};Server=localhost\\SQLEXPRESS;Database=master;Trusted_Connection=True;')
        print('Conexion exitosa')
        return connection
    except Exception as ex:
        print(ex)
        return None