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

@Dao
public interface ICRUDAlunoProvaDAO {
    @Transaction
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    void insertAlunoProva(AlunoProva tblAlunoProva);

    @Query("SELECT * FROM tbl_aluno_prova where aluno_id OR prova_id = :id")
    AlunoProva getEspecificAlunoProvaByID(int id);

    @Query("SELECT * FROM tbl_aluno_prova ORDER BY aluno_id DESC")
    List<AlunoProva> getAllAlunosProva();

    @Transaction
    @Update(entity = AlunoProva.class, onConflict = OnConflictStrategy.REPLACE)
    void updateAlunoProva(AlunoProva tblAlunoProva);

    @Transaction
    @Delete(entity = AlunoProva.class)
    void deleteAlunoProva(AlunoProva tblAlunoProva);

    @Delete
    @Query("DELETE FROM tbl_aluno_prova WHERE aluno_id = :id")
    void deleteAlunoProvaByID(int id);

    @Delete
    @Query("DELETE FROM tbl_aluno WHERE id > 0")
    void deleteAllAlunosProva();

}
