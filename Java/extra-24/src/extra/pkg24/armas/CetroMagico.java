/*@author rober*/

package extra.pkg24.armas;

import extra.pkg24.utils.Aleatorio;


public class CetroMagico extends Armas {
    int cantidadHechizos;

    public CetroMagico(int cantidadHechizos, String nombre, int daño) {
        super(nombre, daño);
        this.cantidadHechizos = cantidadHechizos;
    }

    @Override
    public void usar(int probabilidadCritico) {
        Aleatorio aleatorio = new Aleatorio();
        
        if(aleatorio.numeroAleatorio()>=probabilidadCritico){
            //personaje.setVida(personaje.getVida()-(super.getDaño()+10))
            System.out.println("El contrincante recibe un inpacto crítico. 10 puntos de daño extras");
        } else {
            //personaje.setVida(personaje.getVida-super.getDaño())
        }
    }
    
    
    
}
