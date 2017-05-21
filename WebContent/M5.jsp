<%@page import="com.goodjob.dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%
      	
		Member member=(Member)session.getAttribute("member3");      

      %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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


function check(){

	// 「OK」時の処理開始 ＋ 確認ダイアログの表示
	if(window.confirm('登録して良いですか？')){
	
		document.registration.submit();

	}
	else{

		window.alert('キャンセルされました'); // 警告ダイアログを表示


	}
	// 「キャンセル」時の処理終了

}

</script>
<script type="text/javascript">


function check(){

	// 「OK」時の処理開始 ＋ 確認ダイアログの表示
	if(window.confirm('消去して良いですか？')){
		document.registration.submit()
		return true;

	}
	else{

		window.alert('キャンセルされました'); // 警告ダイアログを表示
		return false;

	}
	// 「キャンセル」時の処理終了

}

</script>
<title>会員情報消去確認</title>
</head>
<body>
<p>会員情報消去確認</p>
<form action ="MemberDeleteAct" method="POST" name="registration">
協賛企業名<br>
<%=member.getCompany_name() %><br><br>
会員番号<br>
<%=member.getMember_number() %><br><br>
氏名<br>
<%=member.getName() %><br><br>
フリガナ<br>
<%=member.getFurigana() %><br><br>
所属名<br>
<%=member.getJob() %><br><br>
連絡先電話番号<br>
<%=member.getPhone_number() %><br><br>
連絡先区分<br>
<%=member.getCategory() %><br><br>
入会日<br>
<%=member.getEntry_date()%><br><br>
与信額<br>
<%=member.getCredit_amount() %><br><br>    
備考<br><br>
<%if(member.getNotes()!=null){ %>
<%=member.getNotes() %>
<%} %>
</form>
	<a href="" class="btn btn-primary" onclick="check();return false">消去</a>
	<hr>
	<p><a href ="MemberCheck.html">会員情報管理画面に戻る</a></p>
</body>
</html>