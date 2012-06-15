// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require jquery.tokeninput
//= require jquery.purr
//= require best_in_place
//= require bootstrap-modal
//= require_tree .
$('document').ready(function() {
  
  // display validation errors for the "request invitation" form
  if ($('.alert-error').length > 0) {
    $("#request-invite").modal('toggle');
  }
  
  // use AJAX to submit the "request invitation" form
  $('#invitation_button').live('click', function() {
    var email = $('form #user_email').val();
    var password = $('form #user_password').val();
    var name = $('form #user_name').val();
    var zip = $('form #user_zip').val();
    var phone_number = $('form #user_phone_number').val();
    var dataString = 'user[email]='+ email + '&user[password]='+ password + '&user[name]='+ name + '&user[zip]='+ zip + '&user[phone_number]='+ phone_number + '&user[society_id]='+ society_name;
    $.ajax({
      type: "POST",
      url: "/users",
      data: dataString,
      success: function(data) {
        $('#request-invite').html(data);
        loadSocial();
      }
    });
    return false;
  });
  
})

// load social sharing scripts if the page includes a Twitter "share" button
function loadSocial() {
    
    //Twitter
    if (typeof (twttr) != 'undefined') {
      twttr.widgets.load();
    } else {
      $.getScript('http://platform.twitter.com/widgets.js');
    }

    //Facebook
    if (typeof (FB) != 'undefined') {
      FB.init({ status: true, cookie: true, xfbml: true });
    } else {
      $.getScript("http://connect.facebook.net/en_US/all.js#xfbml=1", function () {
        FB.init({ status: true, cookie: true, xfbml: true });
      });
    }

    //Google+
    if (typeof (gapi) != 'undefined') {
      $(".g-plusone").each(function () {
        gapi.plusone.render($(this).get(0));
      });
    } else {
      $.getScript('https://apis.google.com/js/plusone.js');
    }
}

$(function() {
  $("#users th a, #users .pagination a").live("click", function() {
    $.getScript(this.href);
    return false;
  });
  $("#users_search input").keyup(function() {
    $.get($("#users_search").attr("action"), $("#users_search").serialize(), null, "script");
    return false;
  });
});

$('.best_in_place').best_in_place()

$.datepicker.setDefaults({
   showOn: 'both',
   buttonImageOnly: true,
   buttonImage: '/assets/calendar.png',
   buttonText: 'Calendar' });

$(function() {
  $("#meeting_meeting_date").datepicker({ dateFormat: "dd-mm-yy", showOn: "both", showOtherMonths: true  });
});

$(function() {
  $("#meeting_issue_date").datepicker({ dateFormat: "dd-mm-yy", showOn: "both", showOtherMonths: true  });
});

$(function() {
  $("#staff_joining_date").datepicker({ dateFormat: "dd-mm-yy", showOn: "both", showOtherMonths: true  });
});
