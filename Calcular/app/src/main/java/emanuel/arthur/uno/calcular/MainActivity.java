package emanuel.arthur.uno.calcular;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
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
    public static final String DIVISAO       = "divisao";
    public static final String MULTIPLICACAO = "Multiplicação";
    public static final String SOMA          = "Soma";
    public static final String SUBTRACAO     = "Subtração";
    private Spinner spiOpcoes;
    private EditText edtOperando01, edtOperando02;
    private ImageView imgOperacao;
    private TextView tvResultado;
    private Button btnCalcular;



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

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

        //PEGA A OPCAO SELECIONADA DO SPINNER
        String operacaoSelecionada = spiOpcoes.getSelectedItem().toString();

        btnCalcular.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                if (operacaoSelecionada == DIVISAO) {// == "divisao"
                }

                if (operacaoSelecionada == MULTIPLICACAO) {// == "Multiplicação"
                }

                if (operacaoSelecionada == SOMA) {// == "Soma"
                }

                if (operacaoSelecionada == SUBTRACAO) {// == "Subtração"
                }

            }
        });

    }

    @Override
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {
        Toast.makeText(this, "Somar", Toast.LENGTH_SHORT).show();



    }

    @Override
    public void onNothingSelected(AdapterView<?> adapterView) {

    }
}