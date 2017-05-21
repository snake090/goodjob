<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String msg = (String)request.getAttribute("msg"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注文受付票検索画面</title>
<script type="text/javascript" src="cmanCalendar_v092.js" charset="utf-8"></script>
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
	crossorigin="anonymous">
</script>
</head>
<body>
	<h2>注文受付票検索</h2>
	<form name="searchcondition" action="ordersearch" method="post">
		<input type="checkbox" name="chkdate" value="date">注文日<br>&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" cmanCLDat="USE:ON" name="date_min">&nbsp;～&nbsp;<input type="text" cmanCLDat="USE:ON" name="date_max"><br><br>
		<input type="checkbox" name="chkstaff" value="staff">担当者名&nbsp;&nbsp;※部分一致<br>&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" name="staff"><br><br>
		<input type="checkbox" name="chkcompany_name" value="company_name">企業名&nbsp;&nbsp;※部分一致<br>&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" name="company_name"><br><br>
		<input type="checkbox" name="chkmember_number" value="member_number">会員番号&nbsp;&nbsp;※完全一致<br>&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" name="member_number"><br><br>
		<input type="checkbox" name="chkname" value="name">会員名&nbsp;&nbsp;※部分一致<br>&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" name="name"><br><br>
		<input type="checkbox" name="chkorder_id" value="order_id">注文受付票番号&nbsp;&nbsp;※完全一致<br>&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" name="order_id"><br>
	</form><br>
	<% if(msg != null) { %>
		<p style="color:red;"><%= msg %></p>
	<% } %>
	<a href="#" class="btn btn-primary" onclick="document.searchcondition.submit();return false;">検索</a>&nbsp;&nbsp;
	<a href="../index.html" class="btn btn-warning">メニューへ戻る</a>
</body>
</html>