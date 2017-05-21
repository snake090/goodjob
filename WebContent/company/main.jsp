<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.goodjob.dto.Company" %>
<%
ArrayList<Company> list = (ArrayList<Company>)session.getAttribute("list");
int select = 0;
String pre_name = (String)request.getAttribute("pre_name");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>メイン画面</title>
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

<script type="text/javascript">

    function goChange(){
        document.getElementById('form').action="change.jsp";
    }

    function goDelete(){
        document.getElementById('form').action="delete.jsp";
    }
</script>

</head>
<body>
<h1>協賛企業管理</h1><hr><hr>
<h2>メイン画面</h2>
<form action="CompanySearch" method="POST" value="<%=pre_name %>">
<input type="text" maxlength="44" name="name">　<input type="submit" value="検索">
</form><br>
<form action="entry.jsp" method="POST">
<input type="submit" value="新規登録">
</form><br>
<% if(list == null){ %>
<% }else if(list.size() == 0){ %>
	検索結果が見つかりませんでした。
<% }else{%>
<h3>企業一覧</h3>
<table class="table table-hover">
<thead>
<tr>
<td></td><td></td><td>企業コード</td><td>企業名</td><td>企業フリガナ</td><td>郵便番号</td><td>住所</td><td>電話番号</td>
<td>給与支給日</td><td>振込銀行名</td><td>支店名</td><td>口座種別</td><td>口座番号</td>
</tr>
<tbody>
<form id='form' name='form' action="view.jsp" method="POST">
<%for(Company comp:list){ %>
<%
int company_id = comp.getCompany_id();
String company_name = comp.getCompany_name();
String company_furigana = comp.getCompany_furigana();
String billing_zip_code = comp.getBilling_zip_code();
String billing_address = comp.getBilling_address();
String billing_phone_number = comp.getBilling_phone_number();
String salary_date = (comp.getSalary_date()==0)?"月末":Integer.toString(comp.getSalary_date());
String bank_name = comp.getBank_name();
String branch_name = comp.getBranch_name();
int temp = comp.getAccount_type();
String account_type = (temp==0)?"当":"普";
String account_number = comp.getAccount_number();
%>
<tr>
<td></td>
<%if(list.indexOf(comp)==0){ %>
<td><input type="radio" name="select" value="0" checked></td>
<%}else{ %>
<td><input type="radio" name="select" value="<%=select %>"></td>
<%} %>
<td align="right" valign="middle"><%= company_id%></td>
<td><%= company_name%></td>
<td><%= company_furigana%></td>
<td><%= billing_zip_code%></td>
<td><%= billing_address%></td>
<td><%= billing_phone_number%></td>
<td><%= salary_date%></td>
<td><%= bank_name%></td>
<td><%= branch_name%></td>
<td><%= account_type%></td>
<td><%= account_number%></td>
</tr>
<% select++; %>
<%} %>
</tbody>
</table>
<input type="submit" value="情報閲覧">　　
<input type="submit" value="変更" onclick="goChange();">　　
<input type="submit" value="消去" onclick="goDelete();"><br><br>
</form>
<%} %><br>
<a href="SessionInvalid">注文作成システムトップに戻る</a><br><br><br>
</body>
</html>