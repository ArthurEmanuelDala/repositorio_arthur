package formacao.desenvolvedores.tecnologia.projetodesoftwareorientadoaobjetos.conceitosintent;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;

public class RespostaActivity extends AppCompatActivity {
    private static final int REQUEST_CODE = 5;
    private Button btnResponda;
    private EditText edtResposta;
    private TextView tvExibir;
    private ImageButton imageLimparResposta;
    private String perguntaEfetuada = "";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_resposta);

        ActionBar actionBar = getSupportActionBar();
        if (actionBar != null) {
            actionBar.setDisplayShowHomeEnabled(true);
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setTitle("Activity de Respostas");
        }

        btnResponda         = findViewById(R.id.btnResponda);
        edtResposta         = findViewById(R.id.edtResposta);
        tvExibir            = findViewById(R.id.tvExibir);
        imageLimparResposta = findViewById(R.id.imageLimparResposta);

        Bundle extras       = getIntent().getExtras();
        String pergunta     = "";
        if (extras != null) {
            perguntaEfetuada = extras.getString("Pergunta");
            pergunta         = "A pergunta é: " + perguntaEfetuada;
            tvExibir.setText(pergunta);

            String resposta = extras.getString("Resposta");
            if (resposta != null) {
                if (!resposta.isEmpty()) {
                    edtResposta.setText(resposta);
                   //tvExibir.setText("A resposta é: " + resposta);
                }
            }
        }

        btnResponda.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();}
        });

        imageLimparResposta.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                edtResposta.setText("");
            }
        });
    }

    @Override
    public void finish() {
        Intent data = new Intent();

        //O contexto da resposta é salvo aqui
        String resposta = edtResposta.getText().toString();
        data.putExtra("recuperarResposta", resposta);

        //O contexto da pergunta é salvo aqui
        String pergunta  = perguntaEfetuada;
        data.putExtra("recuperarPergunta", pergunta);


        setResult(RESULT_OK, data);
        super.finish();
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {

        switch (item.getItemId()){
            case android.R.id.home:{
                finish();
                return true;
            }
        }
        return super.onOptionsItemSelected(item);
    }
}