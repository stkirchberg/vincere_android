package com.vincere.app;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;

public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        VincereCore core = new VincereCore();
        
        String keyPairHex = core.GenerateKeyPairHex();

        TextView textView = new TextView(this);
        textView.setTextSize(18);
        textView.setPadding(40, 40, 40, 40);

        textView.setText("--- Vincere Android Crypto Core ---\n\n" + keyPairHex);

        setContentView(textView);
    }
}