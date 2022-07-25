package emanuel.arthur.uno.morintegraocomjava.database_app;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.room.RoomDatabase;
import androidx.room.TypeConverter;
import androidx.room.TypeConverters;
import androidx.sqlite.db.SupportSQLiteDatabase;

import java.util.concurrent.Executors;

import emanuel.arthur.uno.morintegraocomjava.database_app.converter.Converters;

@TypeConverters({Converters.class})
public abstract class DatabaseApp extends RoomDatabase{
    public static final String DB_NAME = "db_app.db";
    private static volatile DatabaseApp sInstance;
    public static final String TAG = "DatabaseApp";


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

            Log.d(TAG,"Banco criado com sucesso! Rotinas posteriores.");
            });

    }

    public void onOpen(SupportSQLiteDatabase db){
        }
    };

}
