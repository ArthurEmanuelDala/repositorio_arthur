package emanuel.arthur.uno.morintegraocomjava.database_app.dbcallbacks;

import java.util.List;

import emanuel.arthur.uno.morintegraocomjava.database_app.tabelas.Aluno;

public interface IAlunoDbCallback {
    public void getAlunoFromDB(List<Aluno> tblAluno);
}
