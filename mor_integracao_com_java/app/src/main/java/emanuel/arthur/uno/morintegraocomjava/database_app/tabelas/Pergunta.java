package emanuel.arthur.uno.morintegraocomjava.database_app.tabelas;

import androidx.room.Entity;
import androidx.room.Index;
import androidx.room.PrimaryKey;

@Entity(tableName = "tbl_pergunta"
        , indices = {@Index(value = "id", unique = true)})

public class Pergunta {
    @PrimaryKey(autoGenerate = true)

    private int id;
    private String pergunta;
    private int prova_id;

    public Pergunta(){}

    //Construtor cópia
    public Pergunta(Pergunta tblPergunta) {
        this.id       = tblPergunta.getId();
        this.pergunta = tblPergunta.getPergunta();
        this.prova_id = tblPergunta.getProva_id();
    }

    public int getProva_id() {
        return prova_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPergunta() {
        return pergunta;
    }

    public void setPergunta(String pergunta) {
        this.pergunta = pergunta;
    }
}
