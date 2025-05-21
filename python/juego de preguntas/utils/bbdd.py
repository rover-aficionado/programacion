# archivo para la identificación de los jugadores y las respuestas correctas.

import mysql.connector as conect
from mysql.connector import Error

# conexion a la base de datos
conn = conect.connect(
            host="localhost",
            user="root",
            password="AlumnoIFP",
            database="juego",
        )


# verificacion de los usuarios.
def jugadores(jugador, clave_acceso):
    try:
        cursor=conn.cursor()
        sql="SELECT usuario, contraseña FROM usuarios"
        cursor.execute(sql)

        # verifica si el usuario y la contraseña son correctas. devuelve True en caso afirmativo
        for usr, pswd in cursor.fetchall():
            if jugador == usr and clave_acceso == pswd:
                return True
        return False
    
    except Exception as e:
        print("error. no se pudo conectar a la base de datos")
        print(e)


# muestreo de puntuaciones
def puntuaciones(jugador):
    try:
        cursor=conn.cursor()
        sql=f"SELECT puntuacion FROM usuarios WHERE usuario='{jugador}'"
        cursor.execute(sql)
        resultado = cursor.fetchone()
        return resultado[0]
    except Exception as e:
        print("ERROR: no se pudo conectar a la base de datos")
        print(e)

# extrae una pregunta de la base de datos en base a un id pasado por parámetro
def pregunta(id):
    try:
        cursor = conn.cursor()
        sql=f"SELECT texto, respuesta FROM preguntas WHERE codigo = {id}"
        cursor.execute(sql)
        pregunta, respuesta = cursor.fetchone()
        return pregunta, respuesta

    except Exception as e:
        print("ERROR: no se pudo conectar a la base de datos")
        print(e)

def actualiza_puntuaciones(puntuacion, usuario):
    try:
        cursor=conn.cursor()
        sql=f"UPDATE usuarios SET puntuacion = {puntuacion} WHERE usuario = '{usuario}';"
        cursor.execute(sql)
        conn.commit()
    except Exception as e:
        print("ERROR: no se pudo conectar con la base de datos")
        print(e)


