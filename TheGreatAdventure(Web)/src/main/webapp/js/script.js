$(function () {
    validator();
    pageScroll();
    
  });


  function validator(){
    $('#myForm').parsley().on('field:validated', function() {
      var ok = $('.parsley-error').length === 0;
      $('.bs-callout-info').toggleClass('hidden', !ok);
      $('.bs-callout-warning').toggleClass('hidden', ok);
    })
    .on('form:submit', function() {
      save_user();
    })
  }

  var databaseRef = firebase.database().ref('List_komentar/');
  function save_user(){
    var name = document.getElementById('name').value;
    var email = document.getElementById('email').value;
    var message  = document.getElementById('message').value;
   

    var uid = firebase.database().ref().child('List_komentar').push().key;

    var data = {
     name : name,
     email : email,
     message : message
    }

    var updates = {};
    updates['/List_komentar/' + uid] = data;
    firebase.database().ref().update(updates);
    alert('Thanks for your message, we will contact your email later');
    document.getElementById('name').value="";
    document.getElementById('email').value="";
    document.getElementById('message').value="";
    reload_page();
  }

  function reload_page(){
  window.location.reload();
  }

  function pageScroll(){
    $('.page-scroll').on('click', function(e){
      var href = $(this).attr('href');
          var elemenHref = $(href);
    
          $('html, body').animate({
            scrollTop: elemenHref.offset().top - 50
          }, 1200, 'easeInOutExpo');
    
         e.preventDefault();
    });
  }
