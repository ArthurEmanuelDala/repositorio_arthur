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

@Dao
public interface ICRUDAlunoDAO {
    @Transaction
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    void insertAluno(Aluno tblAluno);

    @Query("SELECT * FROM tbl_aluno where id = :id")
    Aluno getEspecificAlunoByID(int id);

    @Query("SELECT * FROM tbl_aluno ORDER BY id DESC")
    List<Aluno> getAllAlunos();

    @Transaction
    @Update(entity = Aluno.class, onConflict = OnConflictStrategy.REPLACE)
    void updateAluno(Aluno tblAluno);

    @Transaction
    @Delete(entity = Aluno.class)
    void deleteAluno(Aluno tblAluno);

    @Delete
    @Query("DELETE FROM tbl_aluno WHERE id = :id")
    void deleteAlunoByID(int id);

    @Delete
    @Query("DELETE FROM tbl_aluno WHERE id > 0")
    void deleteAllAlunos();

}

