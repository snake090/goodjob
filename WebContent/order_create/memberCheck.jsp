<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>会員確認</title>
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
<style type="text/css">
	table{text-align: center}
</style>
<script type="text/javascript">
	function checkBlank(){
		if(document.getElementById("memberNo").value==''){
			alert("検索する会員番号を入力してください。");
			return false;
		}
	}
</script>
</head>
<body>

	<div class="container">

	<h1 style="padding-left: 50px;">会員検索</h1>

	<br>
	<div id="searchDiv" align="center">
		<form action="/goodJob/OrderMember" method="post" onsubmit="return checkBlank()">
			<p>社員番号 <input type="text" name="memberNo" maxlength="9" id="memberNo">
				<input type="submit" value="検索する" class="btn btn-primary" style="margin-left: 20px; margin-right: 20px">
			</p>
		</form>
	</div>
	<br>
	<c:if test="${memList!=null }">
		<div id="listDiv" align="center">
			<br><br>
			<table class="table table-hover" style="width: 800px">
				<thead>
					<tr>
						<td>会社名</td>
						<td>社員番号</td>
						<td>お名前</td>
						<td></td>
					</tr>
				</thead>
				<tbody>
					<c:if test="${memList.size()!=0}">
						<c:forEach items="${memList}" var="member">
							<tr>
								<td style="text-align: left;"><c:out value="${member.company_name }" /></td>
								<td><c:out value="${member.member_number }" /></td>
								<td><c:out value="${member.name }" />(<c:out value="${member.furigana }" />)</td>
								<td><a href="OrderMember?memberNum=<c:out value="${member.member_id }" />" class="btn btn-primary">注文する</a></td>
							</tr>
						</c:forEach>
					</c:if>
					<c:if test="${memList.size()==0}">
						<tr>
							<td colspan="4"><font color="red" face="bold" >会員情報が見つかりませんでした。</font></td>
						</tr>
					</c:if>
				</tbody>
			</table>
		</div>
	</c:if>

	</div>
	<div align="center"><a href="/goodJob/index.html" class="btn btn-warning">メインメニューに戻る</a></div>
	<br><br>
</body>
</html>