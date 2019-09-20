<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Jquary Validation-java servelet</title>

<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css">


<script type="text/javascript">
	$(document).ready(function() {
		
/* this function only allow letters */
		jQuery.validator.addMethod("lettersonly", function(value, element) {
			return this.optional(element) || /^[a-z]+$/i.test(value);
		}, "Letters only please");
		
/* this part validate the form */
		$('#formregister').validate({
			rules : {
				username : {
					lettersonly: true,
					required : true,
					minlength : 6,
					maxlength : 10

				},
				password : {
					required : true,
					minlength : 6,
					maxlength : 10

				},
				age : {
					required : true,
					number : true,
					min : 18,
					max : 50

				},
				email : {
					required : true,
					email : true
				},
				website : {
					url : true,

				}
			}

		});

	});
</script>

</head>
<body>
	<form method="post" action="AccountController" id="formregister">
		<table cellpadding="2" cellspacing="2">
			<tr>
				<td>Username</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td>Age</td>
				<td><input type="text" name="age"></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>Website</td>
				<td><input type="text" name="website"></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" value="Save"></td>
			</tr>


			</form>
</body>
</html>