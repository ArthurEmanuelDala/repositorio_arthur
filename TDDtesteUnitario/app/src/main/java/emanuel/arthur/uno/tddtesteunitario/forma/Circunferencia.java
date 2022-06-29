package emanuel.arthur.uno.tddtesteunitario.forma;

public class Circunferencia extends Forma {
    private static final int TAMANHO_ARRAY_INFO_CALCULO_AREA = 1;
    public static final int EXPOENTE_2 = 2;
    public static final int POSICAO_ZERO = 0;
    //private static final int TAMANHO_MAXIMO_DE_ARRAY = 1;


    public Circunferencia() {
        super(TAMANHO_ARRAY_INFO_CALCULO_AREA);
    }

    @Override
    public double area() {
        return Math.PI * Math.pow(getMedida(POSICAO_ZERO), EXPOENTE_2);
    }

    public int getTamanhoArrayInfoCalculoArea(){
        return TAMANHO_ARRAY_INFO_CALCULO_AREA;
    }
}

