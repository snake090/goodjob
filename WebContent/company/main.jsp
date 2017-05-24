<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.goodjob.dto.Company" %>
<%
ArrayList<Company> list = (ArrayList<Company>)session.getAttribute("list");
int select = 0;
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>協賛企業一覧</title>
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

<link rel="stylesheet" href="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.css"/>
 <script src="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.js"></script>
    <script>
        jQuery(function($){
            $.extend( $.fn.dataTable.defaults, {
                language: {
                    url: "http://cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Japanese.json"
                }
            });
            $("#foo-table").DataTable();
            info: false
        });
    </script>
<script src="jquery.min.js"></script>
<script type="text/javascript"></script>


</head>
<body>
<h1>協賛企業管理</h1>
<h2>企業一覧</h2><br>

<form action="entry.jsp" method="POST">

<input type="submit" value="新規登録" class="btn btn-primary" style="margin-left: 20px; margin-right: 20px">

</form><br>

<% if(list == null){ %>
<% }else if(list.size() == 0){ %>
	<h4><font color="red">検索結果が見つかりませんでした。</font></h4>
<% }else{%>
<form id='form' name='form' action="view.jsp" method="POST">
<table id="foo-table" class="table table-bordered">
<thead>
<tr>
<th>　　　</th><th>企業名</th><th>郵便番号</th>
<th>住所</th><th>電話番号</th>
<th>給与支給日</th><th>振込銀行名</th>
<th>支店名</th><th>口座種別</th><th>口座番号</th>
</tr>
<tbody>
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
String account_type = (temp==0)?"当座":"普通";
String account_number = comp.getAccount_number();
%>
<tr>
<%if(list.indexOf(comp)==0){ %>
<td align="center"><input type="radio" name="select" required value="0" checked></td>
<%}else{ %>
<td align="center"><input type="radio" name="select" required value="<%=select %>"></td>
<%} %>
<td><%= company_name%></td>
<td><%= billing_zip_code%></td>
<td><%= billing_address%></td>
<td><%= billing_phone_number%></td>
<td align="right"><%= salary_date%></td>
<td><%= bank_name%></td>
<td><%= branch_name%></td>
<td><%= account_type%></td>
<td align="right"><%= account_number%></td>
</tr>
<% select++; %>
<%}%>

<!-- 表の行をクリックすると、行内要素のラジオボタンも反応する -->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<script type="text/javascript">
		$(function(){
			var $trList = $("tr:has(input)");					//trでinputタグをもつものを取得
			$trList.each(function() {							//取得したtrタグそれぞれに処理を行う
			    var $input = $(this).find("input");				//trからinputタグを取得しておく。
				$(this).click(function(){
					$input.prop('checked',true);
			    });
			});
		});
		</script>
<!-- ここまで -->

</tbody>
</table>
<input type="submit" value="情報閲覧" class="btn btn-primary" style="margin-left: 20px; margin-right: 20px">　
<input type="submit" value="変更" onclick="goChange();" class="btn btn-primary" style="margin-left: 20px; margin-right: 20px">　
<input type="submit" value="消去" onclick="goDelete();" class="btn btn-primary" style="margin-left: 20px; margin-right: 20px"><br><br>
</form>
<%} %><br>
<a href="SessionInvalid"  class="btn btn-warning">メインメニューに戻る</a><br><br><br>
</body>
</html>