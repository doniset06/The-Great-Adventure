package com.example.thegreatadventure;

import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;

import android.os.Bundle;
import android.util.Log;

import com.ismaeldivita.chipnavigation.ChipNavigationBar;

public class ActivityFragment extends AppCompatActivity {
    private static final String TAG =  ActivityFragment.class.getSimpleName();
    ChipNavigationBar bottomNav;
    FragmentManager fragmentManager;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_fragment);

        bottomNav = findViewById(R.id.bottom_nav);

        if(savedInstanceState==null){
            bottomNav.setItemSelected(R.id.home, true);
            fragmentManager = getSupportFragmentManager();
            HomeFragment homeFragment = new HomeFragment();
            fragmentManager.beginTransaction()
                    .replace(R.id.fragment_container, homeFragment)
                    .commit();
        }

        bottomNav.setOnItemSelectedListener(new ChipNavigationBar.OnItemSelectedListener() {
            @Override
            public void onItemSelected(int id) {
                Fragment fragment = null;
                switch (id){
                    case R.id.home:
                        fragment = new HomeFragment();
                        break;
                    case R.id.detail:
                        fragment = new DetailFragment();
                        break;
                    case R.id.contact:
                        fragment = new ContactFragment();
                        break;
                }

                if(fragment != null){
                    fragmentManager = getSupportFragmentManager();
                    fragmentManager.beginTransaction()
                            .setCustomAnimations(R.anim.enter_from_right, R.anim.exit_to_right, R.anim.enter_from_right, R.anim.exit_to_right)
                            .replace(R.id.fragment_container, fragment)
                            .commit();
                }else{
                    Log.e(TAG, "Error Creating Fragment");
                }
            }
        });
    }
}