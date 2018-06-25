$(document).ready(function(){
    $("a.forgot").click(function(){
        $("#login-modal").modal("hide");
        $("#forgetform").modal({show:!0})
        $("#receiveCode").modal("hide");
    });


    $("#signup-modal").modal("hide");
    $("#forgetform").modal("hide");
    $("#login-modal").modal("hide");
    $("#activation-modal").modal("hide");
    $("#setpassword-modal").modal("hide");
});