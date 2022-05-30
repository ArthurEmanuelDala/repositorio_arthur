package emanuel.arthur.uno.conceitofragments;

import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.FragmentActivity;

import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import android.widget.SeekBar;

public class MainActivity extends FragmentActivity implements ToolbarFragment.ToolbarListener {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

    }


    @Override
    public void onButtonClick(int tamanhofonte, String texto) {
        TextoFragment textoFragment = (TextoFragment) getSupportFragmentManager().findFragmentById(R.id.frgTexto);

        textoFragment.trocarPropriedadesDoTexto(tamanhofonte, texto);

    }
}