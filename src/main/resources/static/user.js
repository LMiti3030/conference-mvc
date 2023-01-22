$(document).ready(function() {
    $.ajax({
        url: "localhost:8080/conference-0.0.1-SNAPSHOT/user"
    }).then( function(data){
        $('.firstname').append(data.firstname);
        $('.lastname').append(data.lastname);
        $('.age').append(data.age);
    });
});
