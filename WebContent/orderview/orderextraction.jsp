<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.goodjob.dto.OrderSheet" %>
<%
int rownum = Integer.parseInt(request.getParameter("rownum"));

List<OrderSheet> list = (List<OrderSheet>)session.getAttribute("resultList");
OrderSheet order_sheet = list.get(rownum);
session.setAttribute("order_sheet", order_sheet);
session.setAttribute("back", true);
response.sendRedirect("../orderview");
%>