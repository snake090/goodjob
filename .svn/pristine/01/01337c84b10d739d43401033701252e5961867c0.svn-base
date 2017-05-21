package com.goodjob.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.goodjob.dao.MemberDAO;
import com.goodjob.dto.Member;

/**
 * Servlet implementation class MemberDelete2
 */
@WebServlet("/MemberDeleteAct")
public class MemberDeleteAct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberDeleteAct() {
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
		System.out.println("deleteact");
		HttpSession session=request.getSession();
		Member members =(Member)session.getAttribute("member3");
		String sql="UPDATE MEMBER SET IS_DELETED=1 WHERE MEMBER_ID ="+members.getMember_id();
		System.out.println(sql);
		MemberDAO.memberExecuteUpdate(sql);
		session.invalidate();
		request.setAttribute("sucsess", "消去しました");

		request.getRequestDispatcher("M1.jsp").forward(request, response);
	}

}
