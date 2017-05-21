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
 * Servlet implementation class CompanySearch2
 */
@WebServlet("/CompanySearch2")
public class CompanySearch2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CompanySearch2() {
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
		ArrayList<Company> compList = null;
		String name = request.getParameter("name");
		String sql = "SELECT * FROM COMPANY";
		if(!name.isEmpty()){
			sql += " WHERE COMPANY_NAME LIKE '%"+name+"%'";
		}
		System.out.println(sql);
		compList = CompanyDao.executeQuery(sql);
		System.out.println(compList.size());
		HttpSession session=request.getSession();
		session.setAttribute("list",compList);
		request.getRequestDispatcher("M6.jsp").forward(request,response);
	}

}
