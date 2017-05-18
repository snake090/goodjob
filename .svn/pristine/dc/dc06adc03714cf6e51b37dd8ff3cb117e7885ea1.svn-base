package com.goodjob.member;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.goodjob.dao.MemberDAO;
import com.goodjob.dto.Member;

/**
 * Servlet implementation class MemberSearch
 */
@WebServlet("/MemberSearch")
public class MemberSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberSearch() {
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
		
		String memNo =request.getParameter("memberNo")	;
		String error="";
		int no=0;
		try {
			no=Integer.parseInt(memNo);
		}catch (NumberFormatException e) {
			
			error="数字以外の入力もしくは桁数がオーバーしています";
			request.setAttribute("error", error);
			request.getRequestDispatcher("M1.jsp").forward(request, response);
		}
		if(no<0){
			error="自然数を入力してください";
			request.setAttribute("error", error);
			request.getRequestDispatcher("M1.jsp").forward(request, response);
		}
		String memberNo=String.valueOf(no);
		//String memberNo =request.getParameter("memberNo")	;
		System.out.println(memberNo);
		String sql="SELECT M.MEMBER_ID,M.MEMBER_NUMBER,M.COMPANY_ID,"
				+ "M.NAME,M.FURIGANA,M.JOB,M.PHONE_NUMBER,M.CATEGORY,"
				+ "M.ENTRY_DATE,M.CREDIT_AMOUNT,M.NOTES,C.COMPANY_NAME "
				+ "FROM MEMBER M  ,COMPANY C WHERE M.is_deleted =0 "
				+ " AND M.MEMBER_NUMBER="+memberNo+ " AND M.COMPANY_ID=C.COMPANY_ID";
		ArrayList<Member> members=MemberDAO.memberSearchExecuteQuery(sql);
		int size=members.size();
		System.out.println(size);
		HttpSession session=request.getSession();
		session.setAttribute("member", members);
		request.getRequestDispatcher("M1.jsp").forward(request, response);
		
	}

}
