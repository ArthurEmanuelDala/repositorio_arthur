package emanuel.arthur.uno.morintegraocomjava.database_app.interfaces_dao;


import androidx.room.Dao;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.OnConflictStrategy;
import androidx.room.Query;
import androidx.room.Transaction;
import androidx.room.Update;

import java.util.List;

import emanuel.arthur.uno.morintegraocomjava.database_app.tabelas.Aluno;
import emanuel.arthur.uno.morintegraocomjava.database_app.tabelas.AlunoProva;
import emanuel.arthur.uno.morintegraocomjava.database_app.tabelas.Pergunta;

@Dao
public interface ICRUDPerguntaDAO {
    @Transaction
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    void insertPergunta(Pergunta tblPergunta);

    @Query("SELECT * FROM tbl_pergunta where id = :id")
    Pergunta getEspecificPerguntaByID(int id);

    @Query("SELECT * FROM tbl_pergunta ORDER BY id DESC")
    List<Pergunta> getAllPerguntas();

    @Transaction
    @Update(entity = Pergunta.class, onConflict = OnConflictStrategy.REPLACE)
    void updatePergunta(Pergunta tblPergunta);

    @Transaction
    @Delete(entity = Pergunta.class)
    void deletePergunta(Pergunta tblPergunta);

    @Delete
    @Query("DELETE FROM tbl_pergunta WHERE id = :id")
    void deletePerguntaByID(int id);

    @Delete
    @Query("DELETE FROM tbl_pergunta WHERE id > 0")
    void deleteAllPerguntas();
}
