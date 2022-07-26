package emanuel.arthur.uno.morintegraocomjava.database_app;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.TypeConverter;
import androidx.room.TypeConverters;
import androidx.sqlite.db.SupportSQLiteDatabase;

import java.util.concurrent.Executors;

import emanuel.arthur.uno.morintegraocomjava.database_app.converter.Converters;
import emanuel.arthur.uno.morintegraocomjava.database_app.interfaces_dao.ICRUDAlunoDAO;
import emanuel.arthur.uno.morintegraocomjava.database_app.interfaces_dao.ICRUDAlunoProvaDAO;
import emanuel.arthur.uno.morintegraocomjava.database_app.interfaces_dao.ICRUDPerguntaDAO;
import emanuel.arthur.uno.morintegraocomjava.database_app.interfaces_dao.ICRUDProvaDAO;
import emanuel.arthur.uno.morintegraocomjava.database_app.interfaces_dao.ICRUDRespostaDAO;

@TypeConverters({Converters.class})
public abstract class DatabaseApp extends RoomDatabase{
    public static final String DB_NAME = "db_app.db";
    private static volatile DatabaseApp sInstance;
    public static final String TAG = "DatabaseApp";

    public abstract ICRUDAlunoDAO alunoDAO();
    public abstract ICRUDProvaDAO provaDAO();
    public abstract ICRUDAlunoProvaDAO alunoProvaDAO();
    public abstract ICRUDPerguntaDAO perguntaDAO();
    public abstract ICRUDRespostaDAO respostaDAO();

    public DatabaseApp() {}

    public static synchronized DatabaseApp getInstance(Context context){
        if (sInstance == null) {
            sInstance = getConnection(context);
        }
        return sInstance;
    }

    private static DatabaseApp getConnection(Context contextActivity){
        DatabaseApp db = Room.databaseBuilder(contextActivity, DatabaseApp.class, DB_NAME)
                .addCallback(initDB)
                .build();

        return db;
    }

    static RoomDatabase.Callback initDB = new RoomDatabase.Callback(){
        public void onCreate (@NonNull SupportSQLiteDatabase db) {
            super.onOpen(db);
            Executors.newSingleThreadScheduledExecutor().execute(() -> {

            Log.d(TAG,"Banco criado com sucesso! Rotinas posteriores.");
            });

    }

    public void onOpen(SupportSQLiteDatabase db){
        }
    };

}
