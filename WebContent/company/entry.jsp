<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.goodjob.dto.Company" %>
<% int par = -2;%>
<% if(request.getAttribute("par") != null){
	par = (int)request.getAttribute("par");
}%>
<%
String name = "";
if(request.getAttribute("name") != null){
	name = (String)request.getAttribute("name");
} %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>協賛企業新規登録</title>
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
<h2>登録画面</h2><br>
登録したい企業名を入力してください。<br><br>
<form action="Entry_check" method="POST">
<input type="text" name="name">　<input type="submit" value="追加">
</form><br><br>
<%if(par == -2){%>
<%}else if(par == -1){ %>
<font color = "red">企業名入力欄が空欄です。</font>
<%}else if(par == 0){ %>
<font color = "red">同名の企業がすでに存在します</font>
<%}else{%>
以下のフォームに必要事項を入力してください。<br><br><br>
<form action="Entry" method="POST">
企業情報<br><br>
<table class="table table-hover"><tr>
<td>企業名</td><td>企業フリガナ</td><td>郵便番号</td><td>住所</td><td>電話番号</td>
<td>給与支給日<br>（月末のときは0）</td><td>振込銀行名</td><td>支店名</td><td>口座種別</td><td>口座番号</td>
</tr>
<tr>
<td><%= name %></td><td><input type="text" required name="company_furigana" maxlength="50"></td>
<td><input type="text" required size="7" name="billing_zip_code" maxlength="7"></td>
<td><input type="text" required name="billing_address"maxlength="50"></td>
<td><input type="text" required size="13" name="billing_phone_number" maxlength="13"></td>
<td><input type="number" required min="0" max="31" size="3" name="salary_date"></td>
<td><input type="text" required size="10" name="bank_name" maxlength="20"></td>
<td><input type="text" required size="10" name="branch_name" maxlength="20"></td>
<td><select name="account_type"><option value="当">当</option><option value="普">普</option></select></td>
<td><input type="text" required size="8" name="account_number" maxlength="8"></td></tr>
</table><br><br>
担当者<br><br>
<table class="table table-hover"><tr>
<td>部署</td><td>担当者名</td><td>フリガナ</td><td>電話番号</td>
</tr><tr>
<td><input type="text" required name="department" maxlength="20"></td>
<td><input type="text" required name="manager_name" maxlength="30"></td>
<td><input type="text" required name="manager_furigana" maxlength="30"></td>
<td><input type="text" required name="manager_phone_number" maxlength="13"></td>
</tr></table><br><br>
<input type="hidden" name="company_name" value="<%= name %>">
<input type="submit" value="登録"><br><br>
</form>
<%} %><br><br><form action="CompanySearch" method="POST">
<input type="submit" value="戻る"></form><br><br>
</body>
</html>