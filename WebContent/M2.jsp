<%@page import="com.goodjob.dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%
      	
		Member member=(Member)request.getAttribute("member2");      

      %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">

<title> 会員情報参照</title>
</head>
<body>
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
備考<br>
<%if(member.getNotes()!=null){ %>
<%=member.getNotes() %>
<%} %>
<br><br>
	<hr>
	<p><a href ="M1.jsp">会員情報管理画面に戻る</a></p>

</body>

</html>