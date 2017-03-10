<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login page</title>
<!--google icons-->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<link href="../css/oracle_style1.css" rel="stylesheet" type="text/css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<script> 
$(document).ready(function(){
    	 
        $(".smallbox").css({'display': 'block', 'opacity': '0'});
		$(".smallbox").animate({top: '125px', opacity: '0'});
        $(".smallbox").fadeIn(500);
        $(".smallbox").animate({top: '95px', opacity: '0.9'}, 500);
});

$(document).ready(function(){
    	 
        $("button").css({'display': 'block', 'opacity': '0'});
		$("button").animate({top: '40px', opacity: '0'});
        $("button").fadeIn(600);
        $("button").animate({top: '50px', opacity: '1'}, 500);
});

$(document).ready(function(){
    	 
        $(".smallbox2").css({'display': 'block', 'opacity': '0'});
		$(".smallbox2").animate({top: '150px', opacity: '0'}, 700);
        $(".smallbox2").fadeIn(700);
        $(".smallbox2").animate({top: '80px', opacity: '0.9'}, 800);
});

</script> 
	
</head>


<body>
	
	<div class="blur">
    </div>

	<!--<div class="navbar-header">
      	<a class="navbar-brand title" href="#">BRAND</a>
	</div>-->
    
    <div class="title">
    		<a href="#">ORACLEEEEEE</a>
    </div> 
    
    
<div class="smallbox">
 <form action="#" method="post">
    <h6 style="text-align:center; font-size:40px; margin-bottom:40px; padding-top:23px">Forgot Password</h6>
    <div style="margin-top:0px">
      <i id="me" class="material-icons" style="font-size:43px">person</i>
      <input style="position:relative" type="text" id="username" name="user" placeholder="Username" autofocus>
    </div>
    <div style="margin-top:5px">
      <i id="lock" class="material-icons" style="font-size:39px">lock</i>
      <input style="position:relative" type="password" id="password" name="pwd" placeholder="Old Password">
    </div>
    <div style="margin-top:5px">
      <i id="lock2" class="material-icons" style="font-size:39px">lock</i>
      <input style="position:relative" type="password" id="newpassword" name="pwd" placeholder="New Password">
    </div>
        <div style="margin-top:5px">
      <i id="lock3" class="material-icons" style="font-size:39px">lock</i>
      <input style="position:relative" type="password" id="confirmpassword" name="pwd" placeholder="Confirm Password">
    </div>

    
     </form>
</div>

<div>
    <a href="#" style="text-decoration:none"><button type="submit"><strong>Submit</strong></button></a>

</div>

<div class="smallbox2">
	<div class="row">
    	<div class="col-md-4" style="padding:5px; text-align:center">
        	<a href="#">English |</a>
        </div>
        <div class="col-md-4" style="padding:5px; text-align:center">
        	<a href="#">Spanish |</a>
        </div>
        <div class="col-md-4" style="padding:5px; text-align:center">
        	<a href="#">French |</a>
        </div>
   </div>
</div>

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>
