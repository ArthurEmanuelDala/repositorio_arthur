package emanuel.arthur.uno.morintegraocomjava.database_app.dbcallbacks;

import java.util.List;

import emanuel.arthur.uno.morintegraocomjava.database_app.tabelas.AlunoProva;

public interface IAlunoProvaDbCallback {
void getAlunoProvaFromDB(List<AlunoProva> tblAlunoProva);
}
