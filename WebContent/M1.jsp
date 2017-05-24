<%@page import="com.goodjob.dto.Member"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	ArrayList<Member> list = (ArrayList<Member>) session.getAttribute("member");
	int number = 1;
	String error = (String) request.getAttribute("error");
	String sucsess = (String) request.getAttribute("sucsess");
	Member member = (Member) request.getAttribute("member2");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ja">
<head>
<%
	if (error != null && !"".equals(error)) {
%>
<font size="3" color="#ff0000"><%=error%></font>
<%
	}
%>
<%
	if (sucsess != null && !"".equals(sucsess)) {
%>
<font size="3" color="#0000ff"><%=sucsess%></font>
<%
	}
%>
<script type="text/javascript" src="cmanCalendar_v092.js" charset="utf-8"></script>
<link rel="stylesheet"
	href="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.css" />
<script
	src="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.js"></script>
<script>
	jQuery(function($) {
		$
				.extend(
						$.fn.dataTable.defaults,
						{
							language : {
								url : "http://cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Japanese.json"
							}
						});
		$("#foo-table").DataTable();
		info: false
	});
</script>
<script src="jquery.min.js"></script>
<script type="text/javascript">
	jQuery(function($) {
		$('tbody tr[data-href]').addClass('clickable').click(function() {
			window.location = $(this).attr('data-href');
		}).find('a').hover(function() {
			$(this).parents('tr').unbind('click');
		}, function() {
			$(this).parents('tr').click(function() {
				window.location = $(this).attr('data-href');
			});
		});
	});
	jQuery(function($) {
		$("#foo-table").DataTable();
	});
</script>
<script type="text/javascript">
	function check(value) {
		if (value == 1) {
			document.table.action = "MemberShow";
			document.table.submit();
		} else if (value == 2) {
			document.table.action = "MemberChange";
			document.table.submit();
		} else if (value == 3) {
			document.table.action = "MemberDelete";
			document.table.submit();
		}
	}
</script>
<title>会員情報管理画面</title>
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
	<h1>会員情報管理画面</h1>
	<br>
	<form action="MemberSearch" method="post" name="search">
		<p>
			会員番号<br> <input type="text" name="memberNo"> <br>
			<br> 会社名<br> <input type="text" name="companyName"><br>
			<br> 氏名<br> <input type="text" name="Name"> <br>
			<br> 所属名<br> <input type="text" name="Job"> <br>
			<br> 入会日<br> 	<input type="text" cmanCLDat="USE:ON" name="nichiji1">～<input type="text" cmanCLDat="USE:ON" name="nichiji2"><br>
			<br>
		</p>

		<!--  <button onclick="show(); return false;" class="btn btn-primary">検索する</button></p>-->
		<!--  <input type="submit" value="検索する">	-->

	
	<p>検索条件<br>
		<select name="conditions">
			<option value="AND">AND</option>
			<option value="OR">OR</option>
		</select>
	</p>
	</form>
	<a href="" class="btn btn-primary"
		onclick="document.search.submit();return false;">検索する</a>
	<br>
	<br>

	<%
		if (member == null) {
	%>
	<form action="" method="post" name="table">
		<table id="foo-table" class="table table-bordered">
			<thead>
				<tr>
					<th></th>
					<th>会社名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
					<th>会員番号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
					<th>氏名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
					<th>フリガナ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
					<th>所属名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
					<th>連絡先電話番号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
					<th>連絡先区分&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
					<th>入会日&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
					<th>与信額&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>

				</tr>
			</thead>

			<%
				if (list != null) {
			%>
			<tbody>
				<%
					for (Member m : list) {
				%>

				<tr>
					<td><input type="radio" name="member" value=<%=number%>></td>
					<td><%=m.getCompany_name()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><div align="right"><%=m.getMember_number()%></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><%=m.getName()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><%=m.getFurigana()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><%=m.getJob()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><%=m.getPhone_number()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><%=m.getCategory()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><%=m.getEntry_date()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><div align="right"><%=m.getCredit_amountString()%></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				</tr>
				<%
					number++;
				%>
				<%
					}
				%>
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
			</tbody>
			<%
				}
			%>
		</table>
		<br>
		<br>
	</form>



	<a href="" class="btn btn-primary" onclick="check(1);return false;">備考参照</a>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="MemberChange.html" class="btn btn-primary"
		onclick="check(2);return false;">変更</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

	<a href="MemberDelConf.html" class="btn btn-primary"
		onclick="check(3);return false;">消去</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

	<%
		} else {
	%>
	<form action="" method="post" name="table">
		<table id="foo-table" class="table table-bordered">
			<thead>
				<tr>
					<th></th>
					<th>会社名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
					<th>会員番号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
					<th>氏名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
					<th>フリガナ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
					<th>所属名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
					<th>連絡先電話番号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
					<th>連絡先区分&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
					<th>入会日&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
					<th>与信額&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="radio" name="member" value=<%=number%>></td>
					<td><%=member.getCompany_name()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><div align="right"><%=member.getMember_number()%></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><%=member.getName()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><%=member.getFurigana()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><%=member.getJob()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><%=member.getPhone_number()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><%=member.getCategory()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><%=member.getEntry_date()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><div align="right"><%=member.getCredit_amountString()%></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				</tr>
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
			</tbody>
		</table>
		<br>
		<br>
	</form>

	<a href="" class="btn btn-primary" onclick="check(1);return false;">備考参照</a>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="MemberChange.html" class="btn btn-primary"
		onclick="check(2);return false;">変更</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

	<a href="MemberDelConf.html" class="btn btn-primary"
		onclick="check(3);return false;">消去</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

	<%
		}
	%>


	<br>
	<br>
	<a href="M6.jsp" class="btn btn-primary">新規登録</a>


	<hr>
	<a href="company/SessionInvalid" class="btn btn-warning">メインメニューに戻る</a>
	<br>
	<br>
	<br>
</body>

</html>