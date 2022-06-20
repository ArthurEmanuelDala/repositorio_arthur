package emanuel.arthur.uno.conceitosclassesabstrataseinterfaces.ui;

import android.os.Bundle;

import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import emanuel.arthur.uno.conceitosclassesabstrataseinterfaces.R;
import emanuel.arthur.uno.conceitosclassesabstrataseinterfaces.formas.Forma;


public class BlankFrag extends Fragment {

    public BlankFrag() {}

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_blank, container, false);

        return view;
    }
}