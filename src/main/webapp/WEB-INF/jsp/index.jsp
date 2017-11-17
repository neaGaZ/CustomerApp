<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script type="text/javascript">
		function onBtnClick(btn) {
			val = btn.value;
			alert(val);
			if  (val == 'view-customers') {
				document.getElementById('CustomerForm').method='get';
				document.getElementById('CustomerForm').submit();
			}
			
			if  (val == 'create-customer') {
				document.getElementById('CustomerForm').method='post';
				document.getElementById('CustomerForm').submit();
			}
			
			if  (val == 'display-customer') {
				document.getElementById('CustomerForm').method='get';
				document.getElementById('CustomerForm').action = document.getElementById('CustomerForm').action + "/greetings/Anas/phone/9039398334";
				document.getElementById('CustomerForm').submit();
			}
		}
	</script>
</head>

<body>

	<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
	<jsp:include page="logout.jsp"></jsp:include>
	
	<h2>Welcome to the Customers page</h2>

	<form id="CustomerForm" action="<%=request.getContextPath()%>/hello" method="post">

	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	<table>
		<tr>
			<th> Customer operations </th>
		</tr> <br>
		<tr><td>
		<input type="button"  value="view-customers" name="View Customer" onclick="onBtnClick(this)">
		<input type="button"  value="create-customer" name="Create Customer" onclick="onBtnClick(this)">
		<input type="button"  value="display-customer" name="Display Customer" onclick="onBtnClick(this)">
		</td></tr>
		<br>
		<!--
		<tr>
			<th> <a href="<%=request.getContextPath()%>/user/"> User Operations (Click Here) </a> </th>
		</tr>
		<tr>
			<th> <a href="<%=request.getContextPath()%>/shopping/"> Shopping Operations (Click Here) </a> </th>
		</tr>

		-->
	</table>
	</form>
</body>
</html>
