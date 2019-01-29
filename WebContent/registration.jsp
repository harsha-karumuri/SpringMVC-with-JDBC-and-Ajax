<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script>

function ajaxMethod() {
	
	var custName= document.myform.customerName.value;
	var cEmail= document.myform.email.value;
	var cphoneNo= document.myform.phone.value;
	
	var xhr= new XMLHttpRequest();
	xhr.open("post","file");
	xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	xhr.send("customerName="+custName+"&email="+cEmail+"&phone="+cphoneNo);
	
	xhr.onreadystatechange= function() {
	
		if(xhr.readyState==4 && xhr.status==200) {

			var data=xhr.responseText;
		
			document.getElementById('mydata').innerHTML=data;
		}
	}
	
	
}

</script>

</head>
<body>
<div align="center">

<form action="" method="post" name="myform">

<table border="1">

<tr>
<td>Customer Name</td>
<td><input type="text" name="customerName"></td>
</tr>

<tr>
<td>Email</td>
<td><input type="text" name="email"></td>
</tr>

<tr>
<td>Phone</td>
<td><input type="text" name="phone"></td>
</tr>

<tr>
<td colspan="2" align="center"><input type="button" value="Register" onclick="ajaxMethod()"></td>
</tr>

</table>

</form>
<span id="mydata"></span>
</div>
</body>
</html>