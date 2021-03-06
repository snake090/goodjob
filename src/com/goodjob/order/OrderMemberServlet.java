package com.goodjob.order;

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
 * Servlet implementation class OrderMemberServlet
 * @author Hayeon Cho
 */
@WebServlet("/OrderMember")
public class OrderMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderMemberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO メンバー情報をセッションに入れて商品入力画面へ移動 session> buyMember
		String member_id =request.getParameter("memberNum")	;
		Member buyMember = MemberDAO.searchMember(Integer.parseInt(member_id));
		HttpSession session = request.getSession();
		session.setAttribute("buyMember", buyMember);
		response.sendRedirect("ProductSearchServlet");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO メンバー情報を検索
		ArrayList<Member> memberList = new ArrayList<Member>();

		String memberNo =request.getParameter("memberNo")	;
		String sql="SELECT M.MEMBER_ID, M.MEMBER_NUMBER, M.COMPANY_ID,"
				+ " M.NAME, M.FURIGANA, M.JOB, M.PHONE_NUMBER, M.CATEGORY,"
				+ "M.ENTRY_DATE, M.CREDIT_AMOUNT, M.NOTES, C.COMPANY_NAME, M.IS_DELETED"
				+ " FROM MEMBER M, COMPANY C WHERE M.IS_DELETED=0 "
				+ "AND M.MEMBER_NUMBER="+memberNo+" AND M.COMPANY_ID=C.COMPANY_ID";
		memberList=MemberDAO.memberSearchExecuteQuery(sql);


		request.setAttribute("memList", memberList);
		request.getRequestDispatcher("/order_create/memberCheck.jsp").forward(request, response);

	}

}
