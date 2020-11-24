package com.example.thegreatadventure;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Patterns;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.Toast;

import com.basgeekball.awesomevalidation.AwesomeValidation;
import com.basgeekball.awesomevalidation.ValidationHolder;
import com.basgeekball.awesomevalidation.ValidationStyle;
import com.basgeekball.awesomevalidation.utility.RegexTemplate;
import com.basgeekball.awesomevalidation.utility.custom.CustomValidation;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;

import java.util.ArrayList;
import java.util.List;

public class Booking extends AppCompatActivity {

    Spinner dropdownmenu;
    EditText textPrice;
    EditText jumlah;
    EditText total;
    EditText name;
    EditText email;
    EditText phone;
    EditText country;
    Button btnBook;

    AwesomeValidation awesomeValidation;

    DatabaseReference reference;
    Request req = new Request();
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_booking);
        dropdownmenu = (Spinner) findViewById(R.id.spinner);
        textPrice   = (EditText) findViewById(R.id.price);
        jumlah      = (EditText) findViewById(R.id.jumlah);
        total       = (EditText) findViewById(R.id.total);
        name        = (EditText) findViewById(R.id.name);
        email       = (EditText) findViewById(R.id.email);
        phone       = (EditText) findViewById(R.id.phone);
        country     = (EditText) findViewById(R.id.country);
        btnBook        = (Button) findViewById(R.id.book);
        textPrice.setEnabled(false);
        total.setEnabled(false);

        //Initialize Validation
        awesomeValidation = new AwesomeValidation(ValidationStyle.BASIC);

        //Add Validation
        awesomeValidation.addValidation(this, R.id.name, RegexTemplate.NOT_EMPTY, R.string.invalid_name);
        awesomeValidation.addValidation(this,R.id.phone, RegexTemplate.TELEPHONE, R.string.invalid_phone);
        awesomeValidation.addValidation(this, R.id.email, Patterns.EMAIL_ADDRESS, R.string.invalid_email);
        awesomeValidation.addValidation(this,R.id.country, RegexTemplate.NOT_EMPTY, R.string.invalid_country);
        awesomeValidation.addValidation(this, R.id.jumlah, RegexTemplate.NOT_EMPTY, R.string.invalid_jumlah);
        awesomeValidation.addValidation(this, R.id.total, RegexTemplate.NOT_EMPTY, R.string.invalid_total);
        awesomeValidation.addValidation(this, R.id.price,  RegexTemplate.NOT_EMPTY, R.string.invalid_price);
        awesomeValidation.addValidation(this, R.id.spinner, String.valueOf(new CustomValidation() {
            @Override
            public boolean compare(ValidationHolder validationHolder) {
                if (((Spinner) validationHolder.getView()).getSelectedItem().toString().equals("Package")){
                    return false;
                }else {
                    return true;
            }
        }
    }), R.string.invalid_spinner);
        //Input Firebase
        btnBook.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if (awesomeValidation.validate()){
                    reference = FirebaseDatabase.getInstance().getReference().child("List_booking");
                    getValue();

                    reference.push().setValue(req);
                    textPrice.setText("");
                    jumlah.setText("");
                    total.setText("");
                    name.setText("");
                    email.setText("");
                    phone.setText("");
                    country.setText("");
                    dropdownmenu.setSelection(0);
                    Toast.makeText(getApplicationContext(), "Booking Succesfully",Toast.LENGTH_SHORT).show();
                }else {
                    Toast.makeText(getApplicationContext(),"Please Fill the Blank Field", Toast.LENGTH_SHORT).show();
                }
            }
        });
        //TOTAL
        textPrice.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void afterTextChanged(Editable editable) {
                int jml = Integer.parseInt(!jumlah.getText().toString().isEmpty() ? jumlah.getText().toString() : "0");
                int price = Integer.parseInt(!textPrice.getText().toString().isEmpty() ? textPrice.getText().toString() : "0");
                int value = jml * price;
                total.setText(String.valueOf(value));
            }
        });

        jumlah.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void afterTextChanged(Editable editable) {
                int jml = Integer.parseInt(!jumlah.getText().toString().isEmpty() ? jumlah.getText().toString() : "0");
                int price = Integer.parseInt(!textPrice.getText().toString().isEmpty() ? textPrice.getText().toString() : "0");
                int value = jml * price;
                total.setText(String.valueOf(value));
            }
        });

        //SPINNER
        List<String> list = new ArrayList<>();
        list.add("Package");
        list.add("Star Gazing");
        list.add("Camping");
        list.add("Hiking");

        ArrayAdapter<String> adapter = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_item, list);
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        dropdownmenu.setAdapter(adapter);
        dropdownmenu.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                String itemvelue = parent.getItemAtPosition(position).toString();
                if (itemvelue == "Star Gazing"){
                    textPrice.setText("400000");
                } else if (itemvelue == "Camping") {
                    textPrice.setText("450000");
                }else if (itemvelue == "Hiking"){
                    textPrice.setText("350000");
                }else{
                    textPrice.setText("0");
                }
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {

            }
        });
    }

    private void getValue(){
        req.setCountry(country.getText().toString());
        req.setEmail(email.getText().toString());
        req.setName(name.getText().toString());
        req.setNperson(jumlah.getText().toString());
        req.setPhone(phone.getText().toString());
        req.setPrice(textPrice.getText().toString());
        req.setTotal(total.getText().toString());
        req.setTravel(dropdownmenu.getSelectedItem().toString());
    }
}
