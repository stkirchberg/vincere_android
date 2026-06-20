package com.vincere.app;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;

public class MainActivity extends Activity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        VincereCore core = new VincereCore();
        String keyPairHex = core.GenerateKeyPairHex();
        TextView textView = findViewById(R.id.cryptoText);
        textView.setText("Key: " + keyPairHex);
    }
}