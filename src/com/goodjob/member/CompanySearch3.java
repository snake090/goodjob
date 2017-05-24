package com.goodjob.member;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.goodjob.dao.CompanyDao;
import com.goodjob.dto.Company;

/**
 * Servlet implementation class CompanySearch3
 * @author 弘中翔太郎
 * @version 1.0 
 */
@WebServlet("/CompanySearch3")
public class CompanySearch3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CompanySearch3() {
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
	 * 協賛企業を検索してセッションを返す
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		ArrayList<Company> compList = null;
		String name = request.getParameter("name");
		String sql = "SELECT * FROM COMPANY WHERE IS_DELETED=0 ";
		if(!name.isEmpty()){
			sql += " AND COMPANY_NAME LIKE '%"+name+"%'";
		}
		System.out.println(sql);
		compList = CompanyDao.executeQuery(sql);
		System.out.println(compList.size());
		HttpSession session=request.getSession();
		session.setAttribute("list",compList);
		request.getRequestDispatcher("M7.jsp").forward(request,response);
	}

}
