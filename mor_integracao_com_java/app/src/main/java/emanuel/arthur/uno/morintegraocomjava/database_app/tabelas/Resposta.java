package emanuel.arthur.uno.morintegraocomjava.database_app.tabelas;

import androidx.room.Entity;
import androidx.room.Index;
import androidx.room.PrimaryKey;

@Entity(tableName = "tbl_aluno"
        , indices = {@Index(value = "id", unique = true)})

public class Resposta {

    @PrimaryKey(autoGenerate = true)

    private int id;
    private String resposta;

    public Resposta(){}

    //Construtor cópia
    public Resposta(Resposta tblResposta) {
        this.id       = tblResposta.getId();
        this.resposta = tblResposta.getResposta();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getResposta() {
        return resposta;
    }

    public void setResposta(String resposta) {
        this.resposta = resposta;
    }
}
