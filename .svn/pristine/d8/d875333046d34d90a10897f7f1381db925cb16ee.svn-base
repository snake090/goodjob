package com.goodjob.member;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.goodjob.dto.Company;

/**
 * Servlet implementation class CompanySelect2
 */
@WebServlet("/CompanySelect2")
public class CompanySelect2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CompanySelect2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String index=request.getParameter("member");
		String error="";
		int member_index=0;
		if(index==null&&"".equals(index)){
			error="ラジオボタンを選択してください";
			request.setAttribute("error", error);
			request.getRequestDispatcher("M6.jsp").forward(request, response);
		}
		try{
			member_index=Integer.parseInt(index)-1;
		}catch (NumberFormatException e) {
			error="ラジオボタンを選択してください";
			request.setAttribute("error", error);
			request.getRequestDispatcher("M6.jsp").forward(request, response);
		}
		
		HttpSession session=request.getSession();
		ArrayList<Company>companies=(ArrayList<Company>)session.getAttribute("list");
		session.setAttribute("company",companies.get(Integer.parseInt(index)-1).getCompany_name() );
		request.getRequestDispatcher("M4.jsp").forward(request, response);
	}

}
