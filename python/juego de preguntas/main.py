# archivo principal del juego

import utils.bbdd as iden
import juego as juego

# inicio de sesion y muestra la puntuacion(forma parte del ejercicio 1)
for i in range(3):
    usuario=input("nombre de usuario: ").strip().upper()
    contraseña = input("contraseña: ").strip().upper() #TODO: eliminar el upper
    
    if iden.jugadores(usuario, contraseña):
        print("contraseña correcta")

        # muestra la puntuación del jugador
        puntuacion=iden.puntuaciones(usuario)
        print(f"su puntuacion es: {iden.puntuaciones(usuario)}")
        print("--------------------inicio de juego--------------------")
        
        # seccion de juego (forma parte del ejercicio 2)
        puntuacion_nueva= 0
        for i in range(10):
            valor = juego.preguntas()
            if valor:
                puntuacion_nueva += 1
            else:
                continue
        
        #verifica las puntuaciones
        if puntuacion_nueva > puntuacion:
            iden.actualiza_puntuaciones(puntuacion_nueva, usuario)
            print(f"puntuación actualizada a {puntuacion_nueva}")
        else:
            print("no se ha actualizado la puntuacion por no ser mayor que la anterior")
        break
    else:
        print("usuario o contraseña incorrectos")
print("saliendo del juego")