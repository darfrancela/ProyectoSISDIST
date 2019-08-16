package com.example.votaciones;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;

import com.example.votaciones.Activity.Login;
import com.example.votaciones.Model.RespaldoListas;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        RespaldoListas.Instancia().CargarListas();
        //Splash programación
        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {

                startActivity(new Intent(MainActivity.this, Login.class));
                finish();
            }
        },2000);
    }
}
