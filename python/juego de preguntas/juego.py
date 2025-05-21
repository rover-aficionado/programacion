# en este archivo van las funcionalidades que permiten que el juego funcione

import utils.aleatorio as al
import utils.bbdd as bbdd
from datetime import datetime

# genera una pregunta en base a un numero pseudoaleatorio
def preguntas():

    numero_aleatorio = al.numero()
    pregunta, respuesta = bbdd.pregunta(numero_aleatorio)


    inicio = datetime.now().second
    # realiza la pregunta
    print(pregunta)
    respuesta_jugaor=input("respuesta: ").strip().upper()
    final = datetime.now().second

    # calcula el tiempo empleado por el usuario para responder la pregunta
    tiempo_usado = final-inicio

    # verifica la respuesta y que el tiempo sea menor que 10 (forma parte del ejercicio 3)
    if tiempo_usado >= 10:
        print("respuesta no válida: tiempo excedido")
        return False
    elif str(respuesta) == str(respuesta_jugaor):
        print("respuesta correcta. se añade un punto a tu puntuación")
        return True
    else:
        print("respuesta incorecta")
        return False

