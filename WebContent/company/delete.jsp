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
<title>協賛企業情報消去確認</title>
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

<script>
function check(){

	// 「OK」時の処理開始 ＋ 確認ダイアログの表示
	if(window.confirm('本当に消去してよろしいですか？')){
		document.registration.submit()
		return true;

	}
	else{
		return false;

	}
	// 「キャンセル」時の処理終了

}
</script>


</head>
<body>
<h1>協賛企業管理</h1>
<h2>消去確認</h2><br>
<h3><font color="red"> 以下の協賛企業と所属会員の情報を消去します！</font></h3><br><br>
<h3>企業情報</h3><br>
<table class="table table-hover"><tr>
<td align="center">企業コード</td><td align="center">企業名</td>
<td align="center">企業フリガナ</td><td align="center">郵便番号</td>
<td align="center">住所</td><td align="center">電話番号</td>
<td align="center">給与支給日</td><td align="center">振込銀行名</td>
<td align="center">支店名</td><td align="center">口座種別</td>
<td align="center">口座番号</td>
</tr>
<tr>
<td align="center"><%= company_id %></td><td><%= company_name %></td>
<td align="center"><%=company_furigana %></td>
<td align="center"><%=billing_zip_code %></td>
<td align="center"><%=billing_address %></td>
<td align="center"><%=billing_phone_number %></td>
<td align="right"><%=salary_date %></td>
<td align="center"><%=bank_name %></td>
<td align="center"><%=branch_name %></td>
<%if(account_type==0){ %>
	<td align="center">当座</td>
<%}else{%>
	<td align="center">普通</td>
<%} %>
<td align="right"><%=account_number %></td></tr>
</table><br><br>
<h3>担当者</h3><br>
<table class="table table-hover"><tr>
<td align="center">部署</td><td align="center">担当者名</td>
<td align="center">フリガナ</td><td align="center">電話番号</td>
</tr><tr>
<td align="center"><%=department %></td>
<td align="center"><%=manager_name %></td>
<td align="center"><%=manager_furigana %></td>
<td align="center"><%=manager_phone_number %></td>
</tr>
</table><br><br>
<form action="CompanySearch" method="POST">
<input type="submit" value="戻る"  class="btn btn-warning" style="margin-left: 20px; margin-right: 20px"></form>
<br><br>
<form action="Delete" method="POST">
<input type="hidden" name=company_id value="<%=company_id %>">
<input type="submit" value="消去" class="btn btn-danger" style="margin-left: 20px; margin-right: 20px" onclick="check();return false"><br><br><br>
</form>
<a href="SessionInvalid"  class="btn btn-warning">メインメニューに戻る</a><br><br><br>
</body>
</html>