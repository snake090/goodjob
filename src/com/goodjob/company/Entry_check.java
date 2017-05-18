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
 * Servlet implementation class Entry_check
 */
@WebServlet("/Entry_check")
public class Entry_check extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Entry_check() {
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
		int parameter = 1;
		if(name.isEmpty()){
			parameter = -1;
		}else{
			String sql = "SELECT * FROM COMPANY";
			sql += " WHERE COMPANY_NAME LIKE '%"+name+"%'";
			System.out.println(sql);
			compList = CompanyDao.executeQuery(sql);
			if(compList.size()!=0){
				parameter = 0;
			}
			System.out.println(compList.size());
		}
		req.setAttribute("par",parameter);
		req.setAttribute("name",name);
		req.getRequestDispatcher("entry.jsp").forward(req,resp);
	}

}
