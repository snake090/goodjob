<%@page import="com.goodjob.dto.Member"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%
      
      ArrayList<Member>list=(ArrayList<Member>)session.getAttribute("member");
      int number=1;
      String error=(String)request.getAttribute("error");
      %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%if(error!=null && !"".equals(error)){ %>
<font size="5" color="#ff0000"><%=error %></font>
<%} %>
<script src="jquery.min.js"></script>
<script type="text/javascript">


jQuery( function($) {
		$('tbody tr[data-href]').addClass('clickable').click( function() {
			window.location = $(this).attr('data-href');
		}).find('a').hover( function() {
			$(this).parents('tr').unbind('click');
		}, function() {
			$(this).parents('tr').click( function() {
				window.location = $(this).attr('data-href');
			});
		});
});
</script>
<script type="text/javascript">
function check(value){
	if(value==1){
		document.table.action="MemberShow";
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
	<p>会員情報管理画面</p>
	<br>
	<form action="MemberSearch" method="post"name="search">
		<p>会員番号 <input type="text" name="memberNo"> 
		
		<!--  <button onclick="show(); return false;" class="btn btn-primary">検索する</button></p>-->
		<!--  <input type="submit" value="検索する">	-->
		

	</form>
	<a href="" class="btn btn-primary"onclick="document.search.submit();return false;">検索する</a><br><br>

	<form action="" method="post"name="table">
	<table>
	<tr>
	<td></td>
	<td>会社名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td>会員番号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td>氏名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td>フリガナ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td>所属名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td>連絡先電話番号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td>連絡先区分&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td>入会日&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td>与信額&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td></td>
	</tr>
	<%if(list!=null){ %>
		<%for(Member m:list){ %>
			<tr>
			 <td><input type ="radio" name="member" value=<%=number%>></td>
			<td><%=m.getCompany_name() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td><%=m.getMember_number() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td><%=m.getName() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td><%=m.getFurigana() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td><%=m.getJob() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td><%=m.getPhone_number() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td><%=m.getCategory() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td><%=m.getEntry_date() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td><%=m.getCredit_amount() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			</tr>
			<%number++;%>
		<%}%> 
	<%}%> 			
	</table><br><br>
	</form>		
			
		

		<a href="" class="btn btn-primary" onclick="check(1);return false;">参照</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="MemberChange.html" class="btn btn-primary"onclick="check(2);return false;">変更</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<a href="MemberDelConf.html" class="btn btn-primary"onclick="check(3);return false;">消去</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		

	<br><br>
	<a href="M3.jsp" class="btn btn-primary">登録</a>


	<hr>
	<p><a href ="MemberCheck.html">メニューに戻る</a></p>
</body>

</html>