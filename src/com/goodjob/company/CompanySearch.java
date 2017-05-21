package com.goodjob.company;

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
 * Servlet implementation class Search
 */
@WebServlet("/company/CompanySearch")
public class CompanySearch extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CompanySearch() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		if(!session.isNew()){
			session.invalidate();
			session = req.getSession();
		}
		req.setCharacterEncoding("UTF-8");
		ArrayList<Company> compList = null;
		String sql = "SELECT * FROM COMPANY WHERE IS_DELETED <> 1 ORDER BY COMPANY_ID ASC";
		System.out.println(sql);
		compList = CompanyDao.executeQuery(sql);
		session.setAttribute("list",compList);
		req.setAttribute("pre_name","");
		req.getRequestDispatcher("/company/main.jsp").forward(req,resp);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		req.setCharacterEncoding("UTF-8");
		ArrayList<Company> compList = null;
		String sql = "SELECT * FROM COMPANY WHERE ";
		String name= req.getParameter("name");
		if(name != null)
			sql += "COMPANY_NAME LIKE '%" + name + "%' AND ";
		sql += " IS_DELETED <> 1 ORDER BY COMPANY_ID ASC";
		System.out.println(sql);
		compList = CompanyDao.executeQuery(sql);
		session.setAttribute("list",compList);
		req.setAttribute("pre_name",name);
		req.getRequestDispatcher("/company/main.jsp").forward(req,resp);
	}


}
