package emanuel.arthur.uno.tddtesteunitario;


import org.junit.Test;
import static org.junit.Assert.*;

import emanuel.arthur.uno.tddtesteunitario.forma.Retangulo;

public class RetanguloTest {
    public static final Retangulo retangulo = new Retangulo(2);
    public static final int PRECISAO_4_CASAS_DECIMAIS = 4;


    @Test
    public void deveriaCalcularArea(){
        double areaBase2altura6 = 12;

        retangulo.setMedidas(0, 2); //Base
        retangulo.setMedidas(1, 6); //Altura

        double area = retangulo.getMedidas(0) * retangulo.getMedidas(1);

        assertEquals("A area de um retangulo de altura 6 e base 2 é 12", areaBase2altura6, area, PRECISAO_4_CASAS_DECIMAIS);



    }

    @Test
    public void deveriaCalcularPerimetro(){
        double perimetroxBase3MaisAltura4 = 24;


        retangulo.setMedidas(0, 3); //Base
        retangulo.setMedidas(1, 4); //Altura

        double perimetro = retangulo.area() * 2;

        assertEquals("O perímetro vezes a Altura 4 + Base 3 é 13", perimetroxBase3MaisAltura4, perimetro, PRECISAO_4_CASAS_DECIMAIS);


    }

}


