package emanuel.arthur.uno.morintegraocomjava.database_app;

import android.content.Context;

import androidx.annotation.NonNull;
import androidx.room.RoomDatabase;
import androidx.sqlite.db.SupportSQLiteDatabase;

import java.util.concurrent.Executors;

public abstract class DatabaseApp extends RoomDatabase{
    public static final String DB_NAME = "db_app.db";
    private static volatile DatabaseApp sInstance;


    public DatabaseApp() {}

    public static synchronized DatabaseApp getInstance(Context context){
        return null;
    }

    private static DatabaseApp getConnection(Context contextActivity){
        return null;
    }

    static RoomDatabase.Callback initDB = new RoomDatabase.Callback(){
        public void onCreate (@NonNull SupportSQLiteDatabase db) {
            super.onOpen(db);
            Executors.newSingleThreadScheduledExecutor().execute(() -> {
        });
    }

    public void onOpen(SupportSQLiteDatabase db){
        }
    };

}
