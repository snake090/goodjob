<%@page import="com.goodjob.dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%

		Member m=(Member)request.getAttribute("member2");

      %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
            // 件数切替機能 無効
            lengthChange: false,
            // 検索機能 無効
            searching: false,
            // ソート機能 無効
            ordering: false,
            // 情報表示 無効
            info: false,
            // ページング機能 無効
            paging: false
        });
    </script>
<head>
<meta charset="UTF-8">

<title> 会員情報参照</title>
</head>
<body>
		<form action="" method="post"name="table">
		<table id="foo-table" class="table table-bordered">
		<thead>
		<tr>
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
				<td><%=m.getCompany_name() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td><div align="right"><%=m.getMember_number() %></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td><%=m.getName() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td><%=m.getFurigana() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td><%=m.getJob() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td><%=m.getPhone_number() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td><%=m.getCategory() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td><%=m.getEntry_date() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td><div align="right"><%=m.getCredit_amountString() %></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				</tr>
		
			</tbody>
						
		</table><br><br>
		</form>	
		<p>備考</p>
		<%=m.getNotesLine() %>
		
	<hr>
		<a href="M1.jsp"  class="btn btn-warning">会員情報管理画面に戻る</a><br><br><br>

</body>

</html>