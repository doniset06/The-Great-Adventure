const auth = firebase.auth();
auth.onAuthStateChanged(function(user) {
    if (user) {
      // User is signed in.
     var user = firebase.auth().currentUser;
        
        if (user != null) {
        var email = user.email;
            document.getElementById("admin").innerHTML = "Welcome :" + email;
        }
  
      // ...
    } else {
      // User is signed out.
        window.location.replace("login.jsp");
      // ...
    }
  });