package com.goodjob.company;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goodjob.dao.CompanyDao;
import com.goodjob.dto.Company;

/**
 * Servlet implementation class companySearch
 */
@WebServlet("company/Search")
public class companySearch extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public companySearch() {
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
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		ArrayList<Company> compList = null;
		String name = req.getParameter("name");
		String sql = "SELECT * FROM COMPANY";
		if(!name.isEmpty()){
			sql += " WHERE COMPANY_NAME LIKE %"+name+"%";
		}
		System.out.println(sql);
		compList = CompanyDao.executeQuery(sql);
		req.setAttribute("compList",compList);
		req.getRequestDispatcher("main.jsp").forward(req,resp);
	}

}
