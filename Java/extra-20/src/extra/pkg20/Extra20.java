package extra.pkg20;

import extra.pkg20.utils.Verificar;

/**
 *
 * @author rober
 */
public class Extra20 {

    public static void main(String[] args) {
        int[][] sudoku = {
        {4, 1, 3, 8, 2, 5, 6, 7, 9},
        {5, 6, 7, 1, 4, 9, 8, 3, 2},
        {2, 8, 9, 7, 3, 6, 1, 4, 5},
        {1, 9, 5, 4, 6, 2, 7, 8, 3},
        {7, 2, 6, 9, 8, 3, 5, 1, 4},
        {3, 4, 8, 5, 1, 7, 2, 9, 6},
        {8, 5, 1, 6, 9, 4, 3, 2, 7},
        {9, 7, 2, 3, 5, 8, 4, 6, 1},
        {6, 3, 4, 2, 7, 1, 9, 5, 8}
    };
    Verificar verificar = new Verificar();
    
        if (verificar.estaCorrecto(sudoku)) {
            System.out.println("está correcto");
        } else {
            System.out.println("NO está correcto");
        }
    
    

    }
    
}
