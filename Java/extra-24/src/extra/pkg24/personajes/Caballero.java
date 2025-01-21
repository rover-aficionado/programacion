/*@author rober*/

package extra.pkg24.personajes;

import extra.pkg24.armas.Espada;
import extra.pkg24.utils.Aleatorio;


public class Caballero extends Personaje {
    int armaduraExtra;

    public Caballero(int armaduraExtra, String nombre, int defensa, int salud, boolean estaVivo) {
        super(nombre, defensa, salud, estaVivo);
        this.armaduraExtra = armaduraExtra;
    }

    @Override
    public void atacar(Personaje objetivo) {
        
        System.out.println(nombre+" ataca");
        objetivo.daño(salud);
        
        
    }
    
    
}
