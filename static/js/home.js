window.onload = function(){
	$('form[name="login"]').submit(function(e){
		$.post('etc/modules/user/login.php', $(this).serialize(), function(data){
           if(data == 1){
                window.location.assign('?do=mail');   
           }else{
               $("#err").remove();
                $('#container').append('<div id="err">You username or password is invalid, please try log in again');   
           }
        });
        return false;
	});   
}



