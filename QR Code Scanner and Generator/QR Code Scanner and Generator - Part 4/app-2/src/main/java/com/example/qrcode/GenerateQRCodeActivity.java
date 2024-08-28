package com.example.qrcode;

import androidx.appcompat.app.AppCompatActivity;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.material.textfield.TextInputEditText;
import com.google.zxing.WriterException;

import androidmads.library.qrgenearator.QRGContents;
import androidmads.library.qrgenearator.QRGEncoder;

public class GenerateQRCodeActivity extends AppCompatActivity {
    private TextView qrCodeTV;
    private ImageView qrCodeIV;
    private TextInputEditText dataEdt;

    private QRGEncoder qrgEncoder;
    private Bitmap bitmap;
    public GenerateQRCodeActivity(TextView qrCodeTV) {
        this.qrCodeTV = qrCodeTV;
    }

    @SuppressLint("MissingInflatedId")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_generate_qrcode);
        qrCodeTV=findViewById(R.id.idTVGenerateQR);
        qrCodeIV = findViewById(R.id.idIVQRCode);
        dataEdt = findViewById(R.id.idEdtData);
        Button generateQRBtn = findViewById(R.id.idBtnGenerateQR);

        // initializing onclick listener for button.
        generateQRBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String data=dataEdt.getText().toString();
                if (data.isEmpty()) {
                    Toast.makeText(GenerateQRCodeActivity.this, "Please enter some data to generate QR Code", Toast.LENGTH_SHORT).show();
                } else {
                    WindowManager manager = (WindowManager) getSystemService(WINDOW_SERVICE);
                    Display display = manager.getDefaultDisplay();
                    Point point = new Point();
                    display.getSize(point);
                    int width = point.x;
                    int height = point.y;
                    int dimen = Math.min(width, height);
                    dimen = dimen * 3 / 4;

                    qrgEncoder = new QRGEncoder(dataEdt.getText().toString(), null, QRGContents.Type.TEXT, dimen);
                    try {
                        bitmap = qrgEncoder.encodeAsBitmap();
                    } catch (WriterException e) {
                        throw new RuntimeException(e);
                    }
                    qrCodeTV.setVisibility(View.GONE);
                    qrCodeIV.setImageBitmap(bitmap);

                        
                        
                }
            }
        });
    }
}