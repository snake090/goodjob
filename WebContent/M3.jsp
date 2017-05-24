<%@page import="com.goodjob.dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
      String error=(String)request.getAttribute("error");
      Member member=(Member)request.getAttribute("member2");
      String company="";
      company=(String)session.getAttribute("company");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script type="text/javascript" src="cmanCalendar_v092.js" charset="utf-8"></script>
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

<title>会員情報登録</title>
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
	
<%if(error!=null && !"".equals(error)){ %>
<font size="3" color="#ff0000"><%=error %></font>
<%} %>
</head>
<h1>会員情報登録</h1>
<br>
<body>
<!--  
	<form action ="Memberregistration" method="POST" onSubmit="return check()>
-->
<%if (member==null){ %>
<form action ="MemberRegistration" method="POST" name="registration">
	協賛企業名<br>
	<p> <%=company %></p>
	会員番号<font size="3" color="#ff0000">*必須</font><br>
	<input type="text" name="memberNo"><br><br>
	氏名<font size="3" color="#ff0000">*必須</font><br>
	<input type="text" name="name"><br><br>
	フリガナ<font size="3" color="#ff0000">*必須</font><br>
	<input type="text" name="furigana"><br><br>
	所属名<font size="3" color="#ff0000">*必須</font><br>
	<input type="text" name="job"><br><br>
	連絡先電話番号<font size="3" color="#ff0000">*必須</font><br>
	<input type="text" name="phoneNumber"><br><br>
	連絡先区分<font size="3" color="#ff0000">*必須</font><br>
	<input type="text" name="category"><br><br>
	入会日<font size="3" color="#ff0000">*必須</font><br>
	<input type="text" cmanCLDat="USE:ON" name="nichiji">
	<br><br>
	与信額<font size="3" color="#ff0000">*必須</font><br>
	<input type="text" name="creditAmount"><br><br>
	備考<br>
	<textarea  name="notes" cols=40 rows=4>
	</textarea><br><br>
</form>
<%} else{%>	
<form action ="MemberRegistration" method="POST" name="registration">
	協賛企業名<font size="3" color="#ff0000">*必須</font><br>
	<p> <%=company %></p>
	会員番号<font size="3" color="#ff0000">*必須</font><br>
	<%if(member.getMember_number()==0){ %>
		<input type="text" name="memberNo"><br><br>
	<%}else{ %>
		<input type="text" name="memberNo"value=<%=member.getMember_number() %>><br><br>
	<%} %>
	
	氏名<font size="3" color="#ff0000">*必須</font><br>
	<%if(member.getName()==null){ %>
		<input type="text" name="name"><br><br>
	<%} else{ %>
		<input type="text" name="name"value=<%=member.getName() %>><br><br>
	<%} %>
	
	フリガナ<font size="3" color="#ff0000">*必須</font><br>
	<%if(member.getFurigana()==null){ %>
		<input type="text" name="furigana"><br><br>
	<%}else{ %>
		<input type="text" name="furigana"value=<%=member.getFurigana() %>><br><br>
	<%} %>
	
	所属名<font size="3" color="#ff0000">*必須</font><br>
	<%if(member.getJob()==null){ %>
	<input type="text" name="job"><br><br>
	<%}else{ %>
	<input type="text" name="job" value=<%=member.getJob() %>><br><br>
	<%} %>
	
	連絡先電話番号<font size="3" color="#ff0000">*必須</font><br>
	<%if(member.getPhone_number()==null){ %>
	<input type="text" name="phoneNumber"><br><br>
	<%}else{ %>
	<input type="text" name="phoneNumber"value=<%=member.getPhone_number() %>><br><br>
	<%} %>
	
	連絡先区分<font size="3" color="#ff0000">*必須</font><br>
	<%if(member.getCategory()==null){ %>
	<input type="text" name="category"><br><br>
	<%}else{ %>
	<input type="text" name="category"value=<%=member.getCategory() %>><br><br>
	<%} %>
	
	入会日<font size="3" color="#ff0000">*必須</font><br>
	<%if(member.getEntry_date()==null){ %>
	<input type="text" cmanCLDat="USE:ON" name="nichiji"><br><br>
	<%}else{ %>
	<input type="text" cmanCLDat="USE:ON" name="nichiji" value=<%=member.getEntry_dateString() %>><br><br>
	<%} %>
	
	与信額<font size="3" color="#ff0000">*必須</font><br>
	<%if(member.getCredit_amount()==0){ %>
	<input type="text" name="creditAmount"><br><br>
	<%}else{ %>
	<input type="text" name="creditAmount"value=<%=member.getCredit_amount() %>><br><br>
	<%} %>
	備考<br>
	<%if(member.getNotes()==null){ %>
	<textarea  name="notes"  cols=40 rows=4>
	</textarea><br><br>
	<%}else{ %>
	<textarea  name="notes"  cols=40 rows=4 ><%=member.getNotes() %>
	</textarea><br><br>
	<%} %>
	</form>
<%} %>
	<a href="" class="btn btn-primary" onclick="check();return false">登録</a>
	<hr>
	
	<a href="SessionInvalid2"  class="btn btn-warning">会員情報管理画面に戻る</a><br><br><br>
</body>
</html>