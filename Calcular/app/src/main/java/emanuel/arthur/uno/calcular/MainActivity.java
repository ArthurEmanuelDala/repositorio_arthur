package emanuel.arthur.uno.calcular;

import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity implements AdapterView.OnItemSelectedListener {
    public static final String TAG           = "MainActivity";
    public static final String DIVISAO       = "Dividir";
    public static final String MULTIPLICACAO = "Multiplicar";
    public static final String SOMA          = "Somar";
    public static final String SUBTRACAO     = "Subtrair";
    private Spinner spiOpcoes;
    private EditText edtOperando01, edtOperando02;
    private ImageView imgOperacao;
    private TextView tvResultado;
    private Button btnCalcular;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_main);

        ActionBar actionBar = getSupportActionBar();
        if(actionBar != null){
            actionBar.setTitle("Calcular");
        }

        spiOpcoes     = findViewById(R.id.spiOpcoes);
        edtOperando01 = findViewById(R.id.edtOperando1);
        edtOperando02 = findViewById(R.id.edtOperando2);
        imgOperacao   = findViewById(R.id.imgOperacao);
        btnCalcular   = findViewById(R.id.btnCalcular);
        tvResultado   = findViewById(R.id.tvResultado);

        imgOperacao.setVisibility(View.INVISIBLE);

        ArrayAdapter<String> adapterOperacoes = new ArrayAdapter<String>(this,
                android.R.layout.simple_spinner_item
                , getResources().getStringArray(R.array.operacoes_matematica));
        adapterOperacoes.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);

        spiOpcoes.setAdapter(adapterOperacoes);
        spiOpcoes.setOnItemSelectedListener(this);



        btnCalcular.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                //PEGA A OPCAO SELECIONADA DO SPINNER
                String operacaoSelecionada = spiOpcoes.getSelectedItem().toString();

                if (operacaoSelecionada == DIVISAO) {// == "divisao"


            }else if(operacaoSelecionada == MULTIPLICACAO) {// == "Multiplicação"

            }else if(operacaoSelecionada == SOMA) {// == "Soma"

            }else if(operacaoSelecionada == SUBTRACAO) {// == "Subtração"

            }else {
               Toast.makeText(MainActivity.this, "Por favor, selecione uma operação disponivel",
                       Toast.LENGTH_LONG).show();
                }
            }
        });

    }

    @Override
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {
        Toast.makeText(MainActivity.this,adapterView.getItemAtPosition(i).toString(),
                Toast.LENGTH_SHORT).show();

        if(adapterView.getItemAtPosition(i).toString().equals(DIVISAO)){
            imgOperacao.setImageDrawable(getResources().getDrawable(R.drawable.divisao, getTheme()));
            imgOperacao.setVisibility(View.VISIBLE);

        } else if(adapterView.getItemAtPosition(i).toString().equals(MULTIPLICACAO)){
            imgOperacao.setImageDrawable(getResources().getDrawable(R.drawable.multiplica, getTheme()));
            imgOperacao.setVisibility(View.VISIBLE);

        } else if(adapterView.getItemAtPosition(i).toString().equals(SOMA)){
            imgOperacao.setImageDrawable(getResources().getDrawable(R.drawable.soma, getTheme()));
            imgOperacao.setVisibility(View.VISIBLE);

        } else if(adapterView.getItemAtPosition(i).toString().equals(SUBTRACAO)){
            imgOperacao.setImageDrawable(getResources().getDrawable(R.drawable.subtracao, getTheme()));
            imgOperacao.setVisibility(View.VISIBLE);

        } else{
            Log.d(TAG, "Nenhuma operação matemática foi selecionada");
        }
    }

    @Override
    public void onNothingSelected(AdapterView<?> adapterView) {

    }
}