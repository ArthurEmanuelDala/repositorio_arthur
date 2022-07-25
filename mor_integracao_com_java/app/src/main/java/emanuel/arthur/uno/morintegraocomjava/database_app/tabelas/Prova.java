package emanuel.arthur.uno.morintegraocomjava.database_app.tabelas;


import androidx.room.Entity;
import androidx.room.Index;
import androidx.room.PrimaryKey;

@Entity(tableName = "tbl_aluno"
        , indices = {@Index(value = "id", unique = true)})

public class Prova{

    @PrimaryKey(autoGenerate = true)

    private int id;
    private String disciplina;

    public Prova(){}

    //Construtor cópia
    public Prova(Prova tblProva) {
        this.id         = tblProva.getId();
        this.disciplina = tblProva.getDisciplina();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDisciplina() {
        return disciplina;
    }

    public void setDisciplina(String disciplina) {
        this.disciplina = disciplina;
    }
}
