/*@author rober*/

package extra.pkg24.juego;

import extra.pkg24.utils.Figuras;
import java.util.Scanner;


public class AparicionPersonajes {
    public static void Aparición(Figuras figura){
        Scanner scn = new Scanner(System.in);
        Figuras figuras = new Figuras();
        
        int seleccion1;
        int seleccion2; 
        
        // menú de selección de personaje
        do {
            figura.mago();
            figura.arquero();
            figura.caballero();
        
            System.out.println("selecciona un jugador:");
            seleccion1 = Integer.parseInt(scn.nextLine());
            System.out.println("selecciona otro jugador:");
            seleccion2 = Integer.parseInt(scn.nextLine());
        } while (seleccion1==seleccion2 || seleccion1 >= 4 || seleccion2 >= 4);
        
        // selección de personajes
        switch (seleccion1) {
            case 1:
                figuras.arquero();
                break;
            case 2:
                figuras.caballero();
            case 3: 
                figuras.mago();
            default:
                System.out.println("error al seleccionar personaje");
        }
        
        switch (seleccion1) {
            case 1:
                figuras.arquero();
                break;
            case 2:
                figuras.caballero();
            case 3: 
                figuras.mago();
            default:
                System.out.println("erro al seleccionar personajes");
        }
    }
}
