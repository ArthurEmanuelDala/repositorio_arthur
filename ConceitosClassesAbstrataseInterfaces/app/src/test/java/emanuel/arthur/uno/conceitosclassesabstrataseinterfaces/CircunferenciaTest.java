package emanuel.arthur.uno.conceitosclassesabstrataseinterfaces;

import static org.junit.Assert.assertTrue;

import org.junit.Test;

import emanuel.arthur.uno.conceitosclassesabstrataseinterfaces.formas.Circunferencia;
import emanuel.arthur.uno.conceitosclassesabstrataseinterfaces.formas.Triangulo;

public class CircunferenciaTest {
    @Test
    public void  areaCircunferenciaTest(){
        Circunferencia circunferencia = new Circunferencia(5);
        boolean x = circunferencia.area() > 0;
        assertTrue(x);
    }
}
