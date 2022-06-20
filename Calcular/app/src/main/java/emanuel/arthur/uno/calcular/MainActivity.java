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
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity implements AdapterView.OnItemSelectedListener {
    public static final String TAG            = "MainActivity";
    public static final String DIVISAO        = "Dividir";
    public static final String MULTIPLICACAO  = "Multiplicar";
    public static final String SOMA           = "Somar";
    public static final String SUBTRACAO      = "Subtrair";
    public static final String LOGARITMO      = "Logaritmar";
    public static final String RAIZ_QUADRADA  = "Extrair";
    public static final String POTENCIACAO    = "Potênciação";
    public static final String POTENCIA_DE_10 = "Potência de 10";
    public int ZERO = 0;
    public int DEZ = 10;
    private Spinner spiOpcoes;
    private EditText edtOperando01, edtOperando02;
    private ImageView imgOperacao;
    private TextView tvResultado;
    private Button btnCalcular;
    private ImageButton imgLixeiro;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_main);

        ActionBar actionBar = getSupportActionBar();
        if (actionBar != null) {
            actionBar.setTitle("Minha Calculadora");
        }

        spiOpcoes     = findViewById(R.id.spiOpcoes);
        edtOperando01 = findViewById(R.id.edtOperando1);
        edtOperando02 = findViewById(R.id.edtOperando2);
        imgOperacao   = findViewById(R.id.imgOperacao);
        btnCalcular   = findViewById(R.id.btnCalcular);
        tvResultado   = findViewById(R.id.tvResultado);
        imgLixeiro    = findViewById(R.id.imglixeiro);

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

                //tvResultado.setText("Digite um valor válido");


                if (operacaoSelecionada.equals(DIVISAO)) {// == "divisao"
                    if (validarTermosVazios()) {
                        if (validarDivisor()) {
                            tvResultado.setText(dividir());
                        } else {
                            Toast.makeText(MainActivity.this, "O divisor não pode ser ZERO!!", Toast.LENGTH_SHORT).show();
                        }

                    } else {
                        Toast.makeText(MainActivity.this, "Preencha com um valor válido", Toast.LENGTH_SHORT).show();
                    }


                } else if (operacaoSelecionada.equals(MULTIPLICACAO)) {// == "Multiplicação"
                    if (validarTermosVazios()) {
                        tvResultado.setText(multiplicar());
                    } else {
                        Toast.makeText(MainActivity.this, "Preencha com um valor válido", Toast.LENGTH_SHORT).show();

                    }

                } else if (operacaoSelecionada.equals(SOMA)) {// == "Soma"
                    if (validarTermosVazios()) {
                        tvResultado.setText(somar());
                    } else {
                        Toast.makeText(MainActivity.this, "Preencha com um valor válido", Toast.LENGTH_SHORT).show();

                    }

                } else if (operacaoSelecionada.equals(SUBTRACAO)) {// == "Subtração"
                    if (validarTermosVazios()) {
                        tvResultado.setText(subtrair());
                    } else {
                        Toast.makeText(MainActivity.this, "Preencha com um valor válido", Toast.LENGTH_SHORT).show();

                    }

                } else if (operacaoSelecionada.equals(LOGARITMO)) {
                    if (validarTermosVazios()) {
                        tvResultado.setText(logaritmo());
                    } else {
                        Toast.makeText(MainActivity.this, "Preencha com um valor válido", Toast.LENGTH_SHORT).show();

                    }


                } else if (operacaoSelecionada.equals(POTENCIACAO)) {
                    if (validarTermosVazios()) {
                        tvResultado.setText(potenciacao());
                    } else {
                        Toast.makeText(MainActivity.this, "Preencha com um valor válido", Toast.LENGTH_SHORT).show();

                    }


                } else if (operacaoSelecionada.equals(POTENCIA_DE_10)) {
                    if (validarRaizPot()) {
                        tvResultado.setText(potencia_10());
                    } else {
                        Toast.makeText(MainActivity.this, "Preencha com um valor válido", Toast.LENGTH_SHORT).show();

                    }


                } else if (operacaoSelecionada.equals(RAIZ_QUADRADA)) {
                    if (validarRaizPot()) {
                        tvResultado.setText(raiz());
                    } else {
                        Toast.makeText(MainActivity.this, "Preencha com um valor válido", Toast.LENGTH_SHORT).show();
                    }


                } else {
                    Toast.makeText(MainActivity.this, "Por favor, selecione uma operação disponivel",
                            Toast.LENGTH_LONG).show();
                }

            }
        });

        imgLixeiro.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                edtOperando01.setText("");
                edtOperando02.setText("");
                tvResultado.setText("");
                imgOperacao.setVisibility(View.INVISIBLE);
            }
        });

    }
        private void setEdtOperando2Behavior(boolean block){
            if(block){
                edtOperando02.setFocusable(false);
                edtOperando02.setFocusable(false);
            }else {
                edtOperando02.setFocusable(true);
                edtOperando02.setEnabled(true);
            }
        }


    @Override
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {

        setEdtOperando2Behavior(false);
        // Inicia com a view no comportamento padrão, ou seja, liberado

        Toast.makeText(MainActivity.this, adapterView.getItemAtPosition(i).toString(),
                Toast.LENGTH_SHORT).show();

        if (adapterView.getItemAtPosition(i).toString().equals(DIVISAO)) {
            imgOperacao.setImageDrawable(getResources().getDrawable(R.drawable.divisao, getTheme()));
            imgOperacao.setVisibility(View.VISIBLE);
            edtOperando01.setHint("Dividendo");
            edtOperando02.setHint("Divisor");
            edtOperando02.setVisibility(View.VISIBLE);

        } else if (adapterView.getItemAtPosition(i).toString().equals(MULTIPLICACAO)) {
            imgOperacao.setImageDrawable(getResources().getDrawable(R.drawable.multiplica, getTheme()));
            imgOperacao.setVisibility(View.VISIBLE);
            edtOperando01.setHint("Multiplicando");
            edtOperando02.setHint("Multiplicador");
            edtOperando02.setVisibility(View.VISIBLE);

        } else if (adapterView.getItemAtPosition(i).toString().equals(SOMA)) {
            imgOperacao.setImageDrawable(getResources().getDrawable(R.drawable.soma, getTheme()));
            imgOperacao.setVisibility(View.VISIBLE);
            edtOperando01.setHint("Parcela");
            edtOperando02.setHint("Parcela");
            edtOperando02.setVisibility(View.VISIBLE);

        } else if (adapterView.getItemAtPosition(i).toString().equals(SUBTRACAO)) {
            imgOperacao.setImageDrawable(getResources().getDrawable(R.drawable.subtracao, getTheme()));
            imgOperacao.setVisibility(View.VISIBLE);
            edtOperando01.setHint("Minuendo");
            edtOperando02.setHint("Subtraendo");
            edtOperando02.setVisibility(View.VISIBLE);

        } else if (adapterView.getItemAtPosition(i).toString().equals(LOGARITMO)) {
            imgOperacao.setImageDrawable(getResources().getDrawable(R.drawable.logaritmo, getTheme()));
            imgOperacao.setVisibility(View.VISIBLE);
            edtOperando01.setHint("Logaritmando");
            edtOperando02.setHint("Logaritmando");
            edtOperando02.setVisibility(View.VISIBLE);

        } else if (adapterView.getItemAtPosition(i).toString().equals(RAIZ_QUADRADA)) {
            imgOperacao.setImageDrawable(getResources().getDrawable(R.drawable.raiz_quadrada, getTheme()));
            imgOperacao.setVisibility(View.VISIBLE);
            edtOperando01.setHint("Extrair");
            edtOperando02.setHint("Não clicável");
            edtOperando02.setVisibility(View.VISIBLE);


        } else if (adapterView.getItemAtPosition(i).toString().equals(POTENCIACAO)) {
            imgOperacao.setImageDrawable(getResources().getDrawable(R.drawable.x_elevado_y, getTheme()));
            imgOperacao.setVisibility(View.VISIBLE);
            edtOperando01.setHint("Potencia 1");
            edtOperando02.setHint("Potencia 2");
            edtOperando02.setVisibility(View.VISIBLE);

        } else if (adapterView.getItemAtPosition(i).toString().equals(POTENCIA_DE_10)) {
            imgOperacao.setImageDrawable(getResources().getDrawable(R.drawable.pot10, getTheme()));
            imgOperacao.setVisibility(View.VISIBLE);
            edtOperando01.setHint("Potencia");
            edtOperando02.setText("10");
            edtOperando02.setVisibility(View.VISIBLE);

            setEdtOperando2Behavior(true);
        } else{
            imgOperacao.setVisibility(View.INVISIBLE);

        }
    }

    @Override
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    private String dividir() {
        Double n1 = Double.parseDouble(edtOperando01.getText().toString());
        Double n2 = Double.parseDouble(edtOperando02.getText().toString());
        Double res = n1 / n2;

        return "O resultado da divisão é: " + res;
    }

    private String multiplicar() {
        Double n1 = Double.parseDouble(edtOperando01.getText().toString());
        Double n2 = Double.parseDouble(edtOperando02.getText().toString());
        Double res = n1 * n2;

        return "O resultado da multiplicação é: " + res;
    }

    private String somar() {
        Double n1 = Double.parseDouble(edtOperando01.getText().toString());
        Double n2 = Double.parseDouble(edtOperando02.getText().toString());
        Double res = n1 + n2;

        return "O resultado da soma é: " + res;
    }

    private String subtrair() {
        Double n1 = Double.parseDouble(edtOperando01.getText().toString());
        Double n2 = Double.parseDouble(edtOperando02.getText().toString());
        Double res = n1 - n2;

        return "O resultado da subtração é: " + res;

    }

    private String logaritmo() {
        Double n1 = Double.parseDouble(edtOperando01.getText().toString());
        Double n2 = Double.parseDouble(edtOperando02.getText().toString());

        Double res = Math.log(n1 / n2);

        return "O retorno da operação é: " + res;
    }

    private String potenciacao() {
        Double n1 = Double.parseDouble(edtOperando01.getText().toString());
        Double n2 = Double.parseDouble(edtOperando02.getText().toString());

        Double res = Math.pow(n1, n2);

        return "O resultado da expressão é: " + res;
    }

    private String potencia_10() {
        Double n1 = Double.parseDouble(edtOperando01.getText().toString());

        Double res = Math.pow(DEZ, n1);

        return "O resultado da expressão: " + res;

    }

    private String raiz() {
        Double n1 = Double.parseDouble(edtOperando01.getText().toString());

        Double res = Math.sqrt(n1);

        return "O resultado da expressão é: " + res;
    }


    private boolean validarTermosVazios() {
        if (!edtOperando01.getText().toString().isEmpty()) {
            if (!edtOperando02.getText().toString().isEmpty()) {
                return true;
            } else {
                edtOperando02.requestFocus();
                return false;
            }

        } else {
            edtOperando01.requestFocus();
            return false;
        }
    }

    private boolean validarDivisor() {
        int n2 = Integer.valueOf(edtOperando02.getText().toString());
        if (n2 != ZERO) {
            return true;

        } else {
            return false;
        }
    }

    private boolean validarRaizPot() {
        if (!edtOperando01.getText().toString().isEmpty()) {
            return true;
        } else {
            return false;
        }
    }

    private void validarExibicao(boolean blok){



        if(blok){
            //edtNumero2.setFocusable(false);
            //edtNumero2.setKeyListener(null);
            edtOperando02.setEnabled(false);
            edtOperando02.setHint("Não editável");

        }else {
            edtOperando02.setFocusable(true);
            //edtNumero2.getKeyListener();
            edtOperando02.setEnabled(true);
        }
    }

}