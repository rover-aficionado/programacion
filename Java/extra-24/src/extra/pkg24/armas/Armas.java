/*@author rober*/

package extra.pkg24.armas;


public abstract class Armas {
    String nombre;
    int daño;

    public Armas(String nombre, int daño) {
        this.nombre = nombre;
        this.daño = daño;
    }

    public String getNombre() {
        return nombre;
    }

    public int getDaño() {
        return daño;
    }
    
    public abstract void usar(int probabilidadCritico);
}
