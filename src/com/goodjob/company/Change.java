package com.goodjob.company;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goodjob.dao.CompanyDao;

/**
 * Servlet implementation class Entry
 */
@WebServlet("/company/Change")
public class Change extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Change() {
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
		String company_name = req.getParameter("company_name");
		String company_furigana = req.getParameter("company_furigana");
		String department = req.getParameter("department");
		String manager_name = req.getParameter("manager_name");
		String manager_furigana = req.getParameter("manager_furigana");
		String manager_phone_number = req.getParameter("manager_phone_number");
		String billing_zip_code = req.getParameter("billing_zip_code");
		String billing_address = req.getParameter("billing_address");
		String billing_phone_number = req.getParameter("billing_phone_number");
		int salary_date = Integer.parseInt(req.getParameter("salary_date"));
		String bank_name = req.getParameter("bank_name");
		String branch_name = req.getParameter("branch_name");
		int account_type=0;
		if(req.getParameter("account_type").equals("普")){
			account_type = 1;
		}
		String account_number = req.getParameter("account_number");
		String sql = "UPDATE COMPANY SET"
				+ " COMPANY_FURIGANA='"+company_furigana + "',"
				+ " DEPARTMENT='" + department + "',"
				+ " MANAGER_NAME='" + manager_name + "',"
				+ " MANAGER_FURIGANA='" + manager_furigana + "',"
				+ " MANAGER_PHONE_NUMBER='" + manager_phone_number + "',"
				+ " BILLING_ZIP_CODE='" + billing_zip_code + "',"
				+ " BILLING_ADDRESS='" + billing_address + "',"
				+ " BILLING_PHONE_NUMBER='" + billing_phone_number + "',"
				+ " SALARY_DATE=" + salary_date + ","
				+ " BANK_NAME='" + bank_name + "',"
				+ " BRANCH_NAME='" + branch_name + "',"
				+ " ACCOUNT_TYPE='" + account_type + "',"
				+ " ACCOUNT_NUMBER='" + account_number + "'"
				+ " WHERE COMPANY_ID=" + company_id
				+ " AND IS_DELETED <> 1";
		System.out.println(sql);
		CompanyDao.updateQuery(sql);
		req.getRequestDispatcher("/company/CompanySearch").forward(req,resp);
	}

}
