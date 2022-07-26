package emanuel.arthur.uno.morintegraocomjava.database_app.interfaces_dao;


import androidx.room.Dao;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.OnConflictStrategy;
import androidx.room.Query;
import androidx.room.Transaction;
import androidx.room.Update;

import java.util.List;

import emanuel.arthur.uno.morintegraocomjava.database_app.tabelas.AlunoProva;
import emanuel.arthur.uno.morintegraocomjava.database_app.tabelas.Pergunta;
import emanuel.arthur.uno.morintegraocomjava.database_app.tabelas.Prova;

@Dao
public interface ICRUDProvaDAO {
    @Transaction
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    void insertProva(Prova tblProva);

    @Query("SELECT * FROM tbl_prova where id = :id")
    Prova getEspecificProvaByID(int id);

    @Query("SELECT * FROM tbl_prova ORDER BY id DESC")
    List<Prova> getAllProvas();

    @Transaction
    @Update(entity = Prova.class, onConflict = OnConflictStrategy.REPLACE)
    void updateProva(Prova tblProva);

    @Transaction
    @Delete(entity = Prova.class)
    void deleteProva(Prova tblProva);

    @Delete
    @Query("DELETE FROM tbl_prova WHERE id = :id")
    void deleteProvaByID(int id);

    @Delete
    @Query("DELETE FROM tbl_prova WHERE id > 0")
    void deleteAllProvas();
}
