/*@author rober*/

package extra.pkg24.armas;

import extra.pkg24.utils.Aleatorio;


public class Espada extends Armas{
    boolean esCritico;
    int probabilidadCritico;

    public Espada(boolean esCritico, int probabilidadCritico, String nombre, int daño) {
        super(nombre, daño);
        this.esCritico = esCritico;
        this.probabilidadCritico = probabilidadCritico;
    }

    @Override
    public void usar(int probabilidadCritico) {
        Aleatorio aleatorio = new Aleatorio();
        
        if(aleatorio.numeroAleatorio()>=probabilidadCritico){
            //personaje.setVida(personaje.getVida()-(super.getDaño()+5))
            System.out.println("el contrincante recibe un impacto crítico, +5 de daño");
        } else {
            //personaje.setVida(personaje.getVida-super.getDaño())
        }
    }

    public boolean isEsCritico() {
        return esCritico;
    }

    public void setEsCritico(boolean esCritico) {
        this.esCritico = esCritico;
    }

    public int getProbabilidadCritico() {
        return probabilidadCritico;
    }

    public void setProbabilidadCritico(int probabilidadCritico) {
        this.probabilidadCritico = probabilidadCritico;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getDaño() {
        return daño;
    }

    public void setDaño(int daño) {
        this.daño = daño;
    }

    
    
    
}
