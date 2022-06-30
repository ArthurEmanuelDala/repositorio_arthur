package emanuel.arthur.uno.tddtesteunitario.forma;

public class Retangulo extends Forma {
    public Retangulo(int medidas) {
        super(medidas);
    }

    @Override
    public double area() {
        return getMedidas(0) * getMedidas(1);

    }
}
