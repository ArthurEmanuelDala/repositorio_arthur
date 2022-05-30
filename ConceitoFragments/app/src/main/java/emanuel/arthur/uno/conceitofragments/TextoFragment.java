package emanuel.arthur.uno.conceitofragments;

import android.os.Bundle;

import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

public class TextoFragment extends Fragment {
    private TextView tvTexto;

    public TextoFragment() {
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View textoLayoutInflated = inflater.inflate(R.layout.fragment_texto, container, false);

        tvTexto = textoLayoutInflated.findViewById(R.id.tvTexto);

        return textoLayoutInflated;
    }
}