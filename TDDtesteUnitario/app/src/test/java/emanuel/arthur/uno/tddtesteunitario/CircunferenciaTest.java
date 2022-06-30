package emanuel.arthur.uno.tddtesteunitario;

import org.junit.Test;
import static org.junit.Assert.*;

import emanuel.arthur.uno.tddtesteunitario.forma.Circunferencia;

public class CircunferenciaTest {
    public static final Circunferencia circunferencia = new Circunferencia();
    private static final int PRECISAO_4_CASAS_DECIMAIS = 4;
    public static final int POSICAO_ZERO = 0;
    public static final int EXPOENTE_2 = 2;
    private double area_raio3;



    @Test
    public void deveriaTerUmaMedidaDeRaioMaiorDoQueZeroNoArrayDeMedidas() {

        circunferencia.setMedidas(0, 3);

        double raio = circunferencia.getMedidas(0);

        boolean x = raio > 0;

        assertTrue(x);

    }

    @Test
    public void deveriaTerUmLimiteDeTamanhoOVetorDeInformacaoDoCalculoDaArea(){
        circunferencia.getTamanhoArrayInfoCalculoArea();

    }

    @Test
    public void deveriaCalcularAreaDaCircunferencia(){
        /* O cálculo da área de uma circunferencia é dada pela fórmula: A = PI * Raio ao Quadrado*/
        int PRECISAO_4_CASAS_DECIMAIS = 4;

        /*Valores calculados no papel e na caneta*/
        double area_raio3 = 28.2743;
        double area_raio4 = 50.2655;
        double area_raio5 = 78.5398;

        /*Raio armazenado na estrutura de dados da classe pai (Forma)*/
        circunferencia.setMedidas(POSICAO_ZERO, 5);

        double area = Math.PI * Math.pow(circunferencia.getMedidas(POSICAO_ZERO), EXPOENTE_2);

        //assertEquals("A area de uma circunferência de raio 3 é 28,2743", area_raio3, area, PRECISAO_4_CASAS_DECIMAIS);
        //assertEquals("A area de uma circunferência de raio 4 é 50,2655", area_raio4, area, PRECISAO_4_CASAS_DECIMAIS);
        assertEquals("A area de uma circunferência de raio 5 é 78.5398", area_raio5, area, PRECISAO_4_CASAS_DECIMAIS);

    }

}