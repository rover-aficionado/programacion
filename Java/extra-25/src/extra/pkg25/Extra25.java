/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package extra.pkg25;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;
import java.util.TreeMap;
import java.util.TreeSet;

/**
 *
 * @author Alumno
 * problema de referencias ruzadas, muestra que palabra tiene en cada línea
 */
public class Extra25 {

	// metodo para ver en qué linea está la palabra
	public static void buscarPalabras(ArrayList<String> texto) {
            TreeMap<String, String> palabrasRepetidas = new TreeMap<>();
		
		
            // divide el array texto y lo mete en uno dividido por palabras
            for(int i = 0; i<texto.size(); i++) {
                ArrayList<String> palabras = new ArrayList<String>();


                // divide las líneas en palabras y las mete en el array siempre y cuando la longitud sea mayor que dos
                String linea = texto.get(i);
                String[] palabra = linea.split(" ");

                for(String palabr : palabra) {
                    palabr = palabr.replaceAll("[^a-zA-ZáéíóúÁÉÍÓÚ]", "");
                    
                    if(palabr.length()>2){
                        palabras.add(palabr);
                    }
                }
                // introduce las palabras en el TreeMap
                for(String palabraEnHash : palabras){
                    String numero = String.valueOf(i + 1); 
                    palabrasRepetidas.put(palabraEnHash, palabrasRepetidas.getOrDefault(palabraEnHash, "") + " " + numero);
                }
            }
            
            System.out.println(palabrasRepetidas);
            
            // TODO: imprimir las palbras repetidas
//            for (String palabra : palabrasRepetidas.keySet()) {
//                System.out.println(palabra + " " + palabrasRepetidas.get(palabra));
//            }
//            System.out.println("----");
                
	}
    
    public static void main(String[] args) {
        Scanner scn = new Scanner(System.in);
        ArrayList<String> texto = new ArrayList<String>();
        
        
        System.out.println("numeros");
        int numeroFilas = Integer.parseInt(scn.nextLine());
        String linea;
        
        // entrada de las líneas e introducción a arrayList.
        while(true) {
	    	linea=scn.nextLine();
	    	if(linea.equals("0")){
                    break;
	    	} else {
                    texto.add(linea);
	    	}
        }
        
        buscarPalabras(texto);
    }
}
