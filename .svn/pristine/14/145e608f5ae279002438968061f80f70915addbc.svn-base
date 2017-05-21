package com.goodjob.company;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goodjob.dao.CompanyDao;

/**
 * Servlet implementation class Delete
 */
@WebServlet("/company/Delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delete() {
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
		int company_id = Integer.parseInt(req.getParameter("company_id"));
		String sql = "UPDATE COMPANY SET"
				+ " IS_DELETED=1"
				+ " WHERE COMPANY_ID=" + company_id
				+ " AND IS_DELETED <> 1";
		System.out.println(sql);
		CompanyDao.updateQuery(sql);
		req.getRequestDispatcher("/company/CompanySearch").forward(req,resp);
	}

}
