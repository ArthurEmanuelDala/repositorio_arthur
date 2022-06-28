package emanuel.arthur.uno.tddtesteunitario;

import org.junit.Test;
import static org.junit.Assert.*;

import emanuel.arthur.uno.tddtesteunitario.forma.Circunferencia;

public class CircunferenciaTest {
    public static final Circunferencia circunferencia = new Circunferencia(1);

    @Test
    public void deveriaTerUmaMedidaDeRaioMaiorDoQueZeroNoArrayDeMedidas() {

        circunferencia.setMedidas(0, 3);

        double raio = circunferencia.getMedida(0);

        boolean x = raio > 0;

        assertTrue(x);


    }

    @Test
    public void deveriaTerUmLimiteDeTamanhoOVetorDeInformacaoDoCalculoDaArea(){

    }

}