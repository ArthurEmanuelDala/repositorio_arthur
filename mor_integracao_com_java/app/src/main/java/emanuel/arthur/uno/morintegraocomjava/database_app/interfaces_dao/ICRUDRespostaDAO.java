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
import emanuel.arthur.uno.morintegraocomjava.database_app.tabelas.Prova;
import emanuel.arthur.uno.morintegraocomjava.database_app.tabelas.Resposta;

@Dao
public interface ICRUDRespostaDAO {
    @Transaction
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    void insertResposta(Resposta tblResposta);

    @Query("SELECT * FROM tbl_resposta where id = :id")
    Resposta getEspecificRespostaById(int id);

    @Query("SELECT * FROM tbl_resposta ORDER BY id DESC")
    List<Resposta> getAllRespostas();

    @Transaction
    @Update(entity = Resposta.class, onConflict = OnConflictStrategy.REPLACE)
    void updateResposta(Resposta tblResposta);

    @Transaction
    @Delete(entity = Resposta.class)
    void deleteResposta(Resposta tblResposta);

    @Delete
    @Query("DELETE FROM tbl_resposta WHERE id = :id")
    void deleteRespostaByID(int id);

    @Delete
    @Query("DELETE FROM tbl_resposta  WHERE id > 0")
    void deleteAllRespostas();

    }

