 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Login Page</title>
</head>
<body>
<h1><s:text name="global.id"/></h1>

 <s:url var="indexEN" action="locale" >
      <s:param name="request_locale" >en</s:param>
   </s:url>
   <s:url var="indexES"  action="locale" >
      <s:param name="request_locale" >es</s:param>
   </s:url>
   <s:url var="indexFR"  action="locale" >
      <s:param name="request_locale" >fr</s:param>
   </s:url>

<s:a href="%{indexEN}">English</s:a>
<s:a href="%{indexES}">Spanish</s:a>
<s:a href="%{indexFR}">France</s:a> 
 
<form action="login" method="post">
<s:textfield label="%{getText('global.name')}" name="USER_NAME" /><br>
<s:textfield label="%{getText('global.id')}" name ="USER_ID"/><br>
<s:textfield label="%{getText('global.password')}" name="OLD_PSWD" /><br>
<s:submit label="submit"></s:submit>
</form>
</body>
</html>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="s" uri="/struts-tags" %>


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

<link href="css/oracle_style.css" rel="stylesheet" type="text/css">

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
        $("button").animate({top: '19px', opacity: '1'}, 500);
});

$(document).ready(function(){
    	 
        $(".smallbox2").css({'display': 'block', 'opacity': '0'});
		$(".smallbox2").animate({top: '150px', opacity: '0'}, 700);
        $(".smallbox2").fadeIn(700);
        $(".smallbox2").animate({top: '50px', opacity: '0.9'}, 800);
});

$(document).ready(function(){
	
		$("#lock").css({'opacity': '0.5'});
});


$(document).ready(function(){
	$("#username").click(function(){
		
		$("#me").css({'opacity': '1'});
		$("#lock").css({'opacity': '0.5'});
	});
});

$(document).ready(function(){
	$("#password").click(function(){
		
		$("#lock").css({'opacity': '1'});
		$("#me").css({'opacity': '0.5'});
	});
});

$(document).ready(function(){
	$("#error1").click(function(){
		
		$("#me").css({'opacity': '0.5'});
	});
});

$(document).ready(function(){
	$("#error2").click(function(){
		
		$("#lock").css({'opacity': '0.5'});
	});
});

$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();   
});

$(document).ready(function(){
    $("#error1").hover(function(){
    $(".tooltip").show();
    },
    function(){
     $(".tooltip").hide();
    }); 
});

$(document).ready(function(){
    $("#error2").hover(function(){
    $(".tooltip").show();
    },
    function(){
     $(".tooltip").hide();
    }); 
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
    		<a href="#">ORACLE</a>
    </div> 
    
    
<div class="smallbox">
 <form action="login" method="post">
    <h6 style="text-align:center; font-size:40px; margin-bottom:40px; padding-top:23px"><s:text name="global.id"/></h6>
    <div>
      <i id="me" class="material-icons" style="font-size:43px">person</i>
      <input style="position:relative" type="text" id="username" name="USER_NAME" placeholder=<s:text name="global.name"/> autofocus>
      <a href="#" data-toggle="tooltip" data-placement="right" title="Username is usually your email address">
      <abbr title="fuckkkkkkkkk">
      <i id="error1" class="material-icons">error_outline</i>
      </abbr></a>
    </div>
    <div style="margin-top:50px">
      <i id="lock" class="material-icons" style="font-size:39px">lock</i>
      <input style="position:relative" type="password" id="password" name="OLD_PSWD" placeholder='global.password'>
      <a href="#" data-toggle="tooltip" data-placement="right" title="Username is usually your email address">
      <abbr title="fuckkkkkkkkk">
      <i id="error2" class="material-icons">error_outline</i>
      </abbr></a>
    </div>
    
     </form>
</div>

<div>
    <a href="#" style="text-decoration:none"><button type="submit"><strong>Sign in</strong></button></a>

</div>

<div class="smallbox2">
	<div class="row">
    	<div class="col-md-4">
        	kjkjkjkj|
        </div>
        <div class="col-md-4">
        	kjkjkjkj|
        </div>
        <div class="col-md-4">
        	kjkjkjkj|
        </div>
   </div>
</div>

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>
