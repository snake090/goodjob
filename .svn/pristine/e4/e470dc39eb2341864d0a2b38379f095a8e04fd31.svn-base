<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.goodjob.dto.Company" %>
<%
int selecter = Integer.parseInt((String)request.getParameter("select"));
System.out.println(selecter);
ArrayList<Company> compList = (ArrayList<Company>)session.getAttribute("list");

Company comp = compList.get(selecter);
int company_id = comp.getCompany_id();
String company_name = comp.getCompany_name();
String company_furigana = comp.getCompany_furigana();
String department = comp.getDepartment();
String manager_name = comp.getManager_name();
String manager_furigana = comp.getManager_furigana();
String manager_phone_number = comp.getManager_phone_number();
String billing_zip_code = comp.getBilling_zip_code();
String billing_address = comp.getBilling_address();
String billing_phone_number = comp.getBilling_phone_number();
String salary_date = (comp.getSalary_date()==0)?"月末":Integer.toString(comp.getSalary_date());
String bank_name = comp.getBank_name();
String branch_name = comp.getBranch_name();
int account_type = comp.getAccount_type();
String account_number = comp.getAccount_number();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>協賛企業情報閲覧</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
</head>
<body>
<h1>協賛企業管理</h1>
<h2>情報閲覧画面</h2><br>
企業情報<br><br>
<table class="table table-hover"><tr>
<td>企業名</td><td>企業フリガナ</td><td>郵便番号</td><td>住所</td><td>電話番号</td>
<td>給与支給日（末日のときは0）</td><td>振込銀行名</td><td>支店名</td><td>口座種別</td><td>口座番号</td>
</tr>
<tr>
<td><%= company_name %></td><td><%=company_furigana %></td>
<td><%=billing_zip_code %></td>
<td><%=billing_address %></td>
<td><%=billing_phone_number %></td>
<td><%=salary_date %></td>
<td><%=bank_name %></td>
<td><%=branch_name %></td>
<%if(account_type==0){ %>
	<td>当</td>
<%}else{%>
	<td>普</td>
<%} %>
<td><%=account_number %></td></tr>
</table><br><br>
担当者<br><br>
<table class="table table-hover"><tr>
<td>部署</td><td>担当者名</td><td>フリガナ</td><td>電話番号</td>
</tr><tr>
<td><%=department %></td>
<td><%=manager_name %></td>
<td><%=manager_furigana %></td>
<td><%=manager_phone_number %></td>
</tr></table><br><br>
<form style="display: inline" action="change.jsp" method="POST">
<input type="hidden" name=select value="<%=selecter %>">
<input type="submit" value="変更">　　
</form>
<form style="display: inline" action="delete.jsp" method="POST">
<input type="hidden" name=select value="<%=selecter %>">
<input type="submit" value="消去"><br><br>
</form>
<br><br><form action="CompanySearch" method="POST">
<input type="submit" value="戻る"></form><br><br>
</body>
</html>