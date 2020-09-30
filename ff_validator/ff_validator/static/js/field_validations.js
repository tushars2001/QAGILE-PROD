function check_account_name(ob, dir=0, skipajax=0){
    if ($(ob).val().length < 2){
        $("#name_check").html("Min 2 char pls");
        $("#name_check").fadeIn("slow", function(){
            $("#name_check").fadeOut("slow", function(){$("#name_check").html("");});
        });
        good.name = 0;
    }
    else if(!isNaN($(ob).val() - 10)){
        $("#name_check").html("Some characters pls!");
        $("#name_check").fadeIn("slow", function(){
            $("#name_check").fadeOut("slow", function(){$("#name_check").html("");});
        });
        good.name = 0;
    }
    else{
        if (skipajax) good.name = 1;
        else check_account_name_ajax($(ob).val(), $("#name_check"), "Account Name Not Available. Pls choose another name.", dir );
    }
}

function check_account_name_ajax(val, target, message, dir){
    $.get( "/create-account/check_account_name/?account_name="+val, function( data ) {
      if (data.length){
        good.name = dir;
      }
      else {
        good.name = !dir;
      }

      if (! good.name ){
        $(target).html(message);
        $(target).fadeIn(500, function(){
            $(target).fadeOut(3000, function(){
                $(target).html("");
                }
            );
        });
      }

    });
}

function check_password(ob){
    if ($(ob).val().length < 6){
        $("#password_check").html("Min 6 char pls");
        $("#password_check").fadeIn("slow", function(){
            $("#password_check").fadeOut("slow", function(){$("#password_check").html("");});
        });
        good.password = 0;
        return false;
    }
    else good.password = 1;
    return true;
}

function check_confirm(ob){

    if ($(ob).val().length < 6){
        $("#confirm_check").html("Min 6 char pls");
        $("#confirm_check").fadeIn("slow", function(){
            $("#confirm_check").fadeOut("slow", function(){$("#confirm_check").html("");});
        });
        good.confirm = 0;
        return false;
    }
    else if ( $("input[name='password']").val() != $("input[name='password_confirm']").val() ){
            $("#confirm_check").html("Passwords don't match");
            $("#confirm_check").fadeIn("slow", function(){
                $("#confirm_check").fadeOut("slow", function(){$("#confirm_check").html("");});
            });
            good.confirm = 0;
    }
    else good.confirm = 1;
    return true;
}

function check_email(ob){
 if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test($(ob).val()))
  {
    if( $(ob).val().length >150 ){
        good.email = 0;
    }
    else {
        good.email = 1;
    }

  }
  else {
    good.email = 0;
  }

  if (good.email) return true;
  else {
    $("#email_check").html("Email is not ok.");
    $("#email_check").fadeIn("slow", function(){
        $("#email_check").fadeOut("slow", function(){$("#email_check").html("");});
    });
    return false;
  }

}