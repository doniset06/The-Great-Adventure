package com.example.thegreatadventure;

import android.content.Intent;
import android.os.Bundle;

import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;

import static com.basgeekball.awesomevalidation.ValidationStyle.BASIC;

/**
 * A simple {@link Fragment} subclass.
 * Use the {@link ContactFragment#newInstance} factory method to
 * create an instance of this fragment.
 */
public class ContactFragment extends Fragment implements View.OnClickListener {

    // TODO: Rename parameter arguments, choose names that match
    // the fragment initialization parameters, e.g. ARG_ITEM_NUMBER
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    // TODO: Rename and change types of parameters
    private String mParam1;
    private String mParam2;

    EditText nameEdt, emailEdt, messageEdt;
    Button btnSubmit;
    String name, email, message;
    DatabaseReference reference;
    ReqComment comment = new ReqComment();

    public ContactFragment() {
        // Required empty public constructor
    }

    /**
     * Use this factory method to create a new instance of
     * this fragment using the provided parameters.
     *
     * @param param1 Parameter 1.
     * @param param2 Parameter 2.
     * @return A new instance of fragment ContactFragment.
     */
    // TODO: Rename and change types and number of parameters
    public static ContactFragment newInstance(String param1, String param2) {
        ContactFragment fragment = new ContactFragment();
        Bundle args = new Bundle();
        args.putString(ARG_PARAM1, param1);
        args.putString(ARG_PARAM2, param2);
        fragment.setArguments(args);
        return fragment;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getArguments() != null) {
            mParam1 = getArguments().getString(ARG_PARAM1);
            mParam2 = getArguments().getString(ARG_PARAM2);
        }
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View rootView =  inflater.inflate(R.layout.fragment_contact, container, false);
        nameEdt = (EditText)rootView.findViewById(R.id.edt_name);
        emailEdt = (EditText)rootView.findViewById(R.id.edt_email);
        messageEdt = (EditText)rootView.findViewById(R.id.edt_message);

        btnSubmit = (Button)rootView.findViewById(R.id.btnSubmit);
        btnSubmit.setOnClickListener(this);

        RelativeLayout layoutBtn = (RelativeLayout)rootView.findViewById(R.id.linkMap);
        layoutBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getActivity(),MapsActivity.class);
                startActivity(intent);
            }
        });
        return rootView;
    }

    private void submitValue(){

        name = nameEdt.getText().toString();
        email = emailEdt.getText().toString();
        message = messageEdt.getText().toString();

        getValue();
        if(name.matches("") && email.matches("") && message.matches("")){
            Log.e("Error", String.valueOf(comment));
            Toast.makeText(getActivity(), "Please Fill All Blank Field",Toast.LENGTH_SHORT).show();
        }else if (name.matches("") || email.matches("") || message.matches("")){
            Log.e("Error", String.valueOf(comment));
            Toast.makeText(getActivity(), "Please Fill All Field",Toast.LENGTH_SHORT).show();
        } else {
            reference = FirebaseDatabase.getInstance().getReference().child("List_komentar");
            reference.push().setValue(comment);
            nameEdt.setText("");
            emailEdt.setText("");
            messageEdt.setText("");
            Toast.makeText(getActivity(), "Thanks For Your Feedback",Toast.LENGTH_SHORT).show();
        }


    }

    private void getValue(){
            comment.setName(nameEdt.getText().toString());
            comment.setEmail(emailEdt.getText().toString());
            comment.setMessage(messageEdt.getText().toString());
    }

    @Override
    public void onClick(View view) {
        submitValue();
    }
}