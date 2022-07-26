package emanuel.arthur.uno.morintegraocomjava.database_app.dbcallbacks;

import java.util.List;

import emanuel.arthur.uno.morintegraocomjava.database_app.tabelas.Resposta;

public interface IRespostaDbCallback {
    void getRespostaFromDB(List<Resposta> tblResposta);
}
