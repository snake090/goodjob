<%@page import="com.goodjob.dto.Company"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
ArrayList<Company> list = (ArrayList<Company>)session.getAttribute("list");
int number=1;
%>
<html>
<head>
<script type="text/javascript">
function check(value){
	if(value==1){
		document.table.action="CompanySelect";
		document.table.submit();
	}
}

</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>協賛企業検索</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
</head>
<body>
	<form action="CompanySearch2" method="post"name="search">
		<p>協賛企業 <input type="text" name="name"> 

	</form>
	<a href="" class="btn btn-primary"onclick="document.search.submit();return false;">検索する</a><br><br>

		<form action="" method="post"name="table">
		<table>
		<tr>
		<td></td>
		<td>会社名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>

		</tr>
		<%if(list!=null){ %>
			<%for(Company c:list){ %>
				<tr>
				 <td><input type ="radio" name="member" value=<%=number%>></td>
				<td><%=c.getCompany_name() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				</tr>
				<%number++;%>
			<%}%> 
		<%}%> 			
		</table><br><br>
		</form>		
			
		

		<a href="" class="btn btn-primary" onclick="check(1);return false;">決定</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		
		

</body>
</html>