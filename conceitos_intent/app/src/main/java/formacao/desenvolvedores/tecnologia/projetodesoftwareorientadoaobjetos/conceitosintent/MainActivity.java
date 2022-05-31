package formacao.desenvolvedores.tecnologia.projetodesoftwareorientadoaobjetos.conceitosintent;

import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    private static final int REQUEST_CODE = 5;
    private Button btnPergunta;
    private EditText edtPergunta;
    private TextView tvExibirResposta;
    private ImageButton imageLimparPergunta;
    private ActivityResultLauncher<Intent> activityResultLauncher;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        ActionBar actionBar = getSupportActionBar();
        if (actionBar != null) {
            actionBar.setTitle("Activity de Perguntas");
        }

        btnPergunta         = findViewById(R.id.btnPergunta);
        tvExibirResposta    = findViewById(R.id.tvExibirResposta);
        edtPergunta         = findViewById(R.id.edtPergunta);
        imageLimparPergunta = findViewById(R.id.imageLimparPergunta);

        btnPergunta.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if (!edtPergunta.getText().toString().isEmpty()) {
                    if (Build.VERSION.SDK_INT < Build.VERSION_CODES.R) {
                        Intent intent = new Intent(MainActivity.this, RespostaActivity.class);

                        String myString = edtPergunta.getText().toString();
                        intent.putExtra("Pergunta", myString);

                        startActivityForResult(intent, REQUEST_CODE);
                    } else {
                        openActivityForResult();

                    }

                } else {
                    Toast.makeText(MainActivity.this, "Por favor, digite uma pergunta", Toast.LENGTH_LONG).show();
                }
            }
        });

        imageLimparPergunta.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                edtPergunta.setText("");
                tvExibirResposta.setText("");
            }
        });

        activityResultLauncher = registerForActivityResult(
                new ActivityResultContracts.StartActivityForResult(),
                new ActivityResultCallback<ActivityResult>() {
                    @Override
                    public void onActivityResult(ActivityResult result) {
                        if (result.getResultCode() == Activity.RESULT_OK) {
                            Intent data = result.getData();
                            tvExibirResposta.setText(data.getExtras().getString("recuperarResposta"));
                    }
                }
             });

    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        if ((requestCode == REQUEST_CODE) && (resultCode == RESULT_OK)){

            String perguntaRetornada = data.getExtras().getString("recuperarPergunta");
            String resposta          = data.getExtras().getString("recuperarResposta");
            //data.getExtras().getString("resposta");

            if(resposta != null) {
                if (!resposta.isEmpty()) {
                    tvExibirResposta.setText(resposta);
                }
            }

            if(perguntaRetornada != null) {
                if (!perguntaRetornada.isEmpty()) {
                    edtPergunta.setText(perguntaRetornada);
                }
            }
        }
    }

    private void openActivityForResult() {
        Intent intent = new Intent(MainActivity.this, RespostaActivity.class);

        /*String myString = edtPergunta.getText().toString();
        intent.putExtra("Pergunta", myString);*/

        intent.putExtra("Pergunta", edtPergunta.getText().toString());

        activityResultLauncher.launch(intent);

    }
}