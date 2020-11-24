  function signIn(){
      var email = document.getElementById("txtEmail").value;
      var password = document.getElementById("txtPass").value;

      firebase.auth().signInWithEmailAndPassword(email, password)
      .then(function(){
        window.location.replace("index.jsp");
      }).catch(function(error) {
        // Handle Errors here.
        var errorCode = error.code;
        var errorMessage = error.message;
        // ...

        window.alert("Error :" + errorMessage);
      });
  }


    function signOut(){
      Swal.fire({
        icon: 'info',
        title: 'Oops...',
        text: 'You have been logged out. Thank you!'
      }).then(function(isConfirm){
        firebase.auth().signOut();
        window.location.replace = ("login.jsp");
      })  
        
    }