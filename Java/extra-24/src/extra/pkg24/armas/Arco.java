/*@author rober*/

package extra.pkg24.armas;

import extra.pkg24.utils.Aleatorio;


public class Arco extends Armas{
    int CantidadFlechas;
    int probabilidadCritico;

    public Arco(int CantidadFlechas, String nombre, int daño) {
        super(nombre, daño);
        this.CantidadFlechas = CantidadFlechas;
    }

    @Override
    public void usar(int probabilidadCritico) {
        Aleatorio aleatorio = new Aleatorio();
        
        if(aleatorio.numeroAleatorio()>=probabilidadCritico){
            //personaje.setVida(personaje.getVida()-(super.getDaño()+15))
            System.out.println("El contrincante recibe un inpacto crítico. 15 puntos de daño extras");
        } else {
            //personaje.setVida(personaje.getVida-super.getDaño())
        }
    }
    
    
    
}
