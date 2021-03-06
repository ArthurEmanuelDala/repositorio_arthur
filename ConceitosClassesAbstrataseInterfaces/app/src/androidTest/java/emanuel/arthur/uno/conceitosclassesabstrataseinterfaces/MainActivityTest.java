package emanuel.arthur.uno.conceitosclassesabstrataseinterfaces;


import static androidx.test.espresso.Espresso.onView;
import static androidx.test.espresso.assertion.ViewAssertions.matches;
import static androidx.test.espresso.matcher.ViewMatchers.isDisplayed;
import static androidx.test.espresso.matcher.ViewMatchers.withId;
import static org.junit.Assert.*;

import static java.util.regex.Pattern.matches;

import androidx.test.core.app.ActivityScenario;
import androidx.test.ext.junit.runners.AndroidJUnit4;
import androidx.test.internal.runner.junit4.AndroidJUnit4ClassRunner;

import org.junit.Test;
import org.junit.runner.RunWith;

@RunWith(AndroidJUnit4ClassRunner.class)
public class MainActivityTest {

    @Test
    public void deveriaMainActivityEstarVisivel(){
        ActivityScenario <MainActivity> activityScenario = ActivityScenario.launch(MainActivity.class);
        onView(withId(R.id.layoutDaMainActivity)).check(matches(isDisplayed()));


    }
}


//androidTest: parte gráfica
//test: parte de interação