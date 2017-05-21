package com.goodjob.view;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.goodjob.dto.Member;
import com.goodjob.dto.Order;
import com.goodjob.dto.OrderSheet;

/**
 * Servlet implementation class OrderSearchServlet
 */
@WebServlet("/ordersearch")
public class OrderSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String memberSql = "SELECT M.MEMBER_ID, M.MEMBER_NUMBER, M.COMPANY_ID,"
					+ " M.NAME, M.FURIGANA, M.JOB, M.PHONE_NUMBER, M.CATEGORY,"
					+ "M.ENTRY_DATE, M.CREDIT_AMOUNT, M.NOTES, C.COMPANY_NAME"
					+ " FROM MEMBER M, COMPANY C";
		String memberWhere = " WHERE M.IS_DELETED=0";
		String orderWhere = "";
		List<OrderSheet> resultOSL = new ArrayList<OrderSheet>();		// OSL = OrderSheetList
		List<OrderSheet> memberOSL = new ArrayList<OrderSheet>();
		List<OrderSheet> orderOSL = new ArrayList<OrderSheet>();
		List<String> checks = new ArrayList<String>();		// チェックボックスの判定
		if(request.getParameter("chkdate") != null) {
			checks.add(request.getParameter("chkdate"));
		}
		if(request.getParameter("chkstaff") != null) {
			checks.add(request.getParameter("chkstaff"));
		}
		if(request.getParameter("chkcompany_name") != null) {
			checks.add(request.getParameter("chkcompany_name"));
		}
		if(request.getParameter("chkmember_number") != null) {
			checks.add(request.getParameter("chkmember_number"));
		}
		if(request.getParameter("chkname") != null) {
			checks.add(request.getParameter("chkname"));
		}
		if(request.getParameter("chkorder_id") != null) {
			checks.add(request.getParameter("chkorder_id"));
		}

		String sMinDate = "";
		String sMaxDate = "";
		String staff = "";
		String company_name = "";
		String member_number = "";
		String name = "";
		String order_id = "";
		if(checks.size() != 0) {
			try {
				for(String c : checks) {
					switch(c) {
					case "date":
						sMinDate = request.getParameter("date_min");
						sMaxDate = request.getParameter("date_max");
	//					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	//					Date minDate = null;
	//					Date maxDate = null;
	//					if(sMinDate.equals("") == false) {
	//						minDate = sdf.parse(request.getParameter("date_min"));
	//					}
	//					if(sMaxDate.equals("") == false) {
	//						maxDate = sdf.parse(request.getParameter("date_max"));
	//				        Calendar cal = Calendar.getInstance();
	//				        cal.setTime(maxDate);
	//				        cal.add(Calendar.DATE, 1);
	//					}
						orderWhere += addWhereOrAnd(orderWhere);
						if(sMinDate.equals("")) {
							if(sMaxDate.equals("")) {
								textCheck(sMinDate, request, response);
							}else {
								orderWhere += "order_date < " + sMaxDate;
							}
						} else {
							orderWhere +="order_date > " + sMinDate;
							if(!sMaxDate.equals("")) {
								orderWhere += addWhereOrAnd(orderWhere) + "order_date < " + sMaxDate;
							}
						}
						break;
					case "staff":
						staff = request.getParameter("staff");
						textCheck(staff, request, response);
						orderWhere += addWhereOrAnd(orderWhere);
						orderWhere += "order_staff LIKE '%" + staff + "%'";
						break;
					case "company_name":
						company_name = request.getParameter("company_name");
						textCheck(company_name, request, response);
						memberWhere += addWhereOrAnd(memberWhere);
						memberWhere += "C.company_name LIKE '%" + company_name + "%'";
						break;
					case "member_number":
						member_number = request.getParameter("member_number");
						textCheck(member_number, request, response);
						memberWhere += addWhereOrAnd(memberWhere);
						memberWhere += "M.member_number = " + Integer.parseInt(member_number);
						break;
					case "name":
						name = request.getParameter("name");
						textCheck(name, request, response);
						memberWhere += addWhereOrAnd(memberWhere);
						memberWhere += "M.name LIKE '%" + name + "%'";
						break;
					case "order_id":
						order_id = request.getParameter("order_id");
						textCheck(order_id, request, response);
						orderWhere += addWhereOrAnd(orderWhere);
						orderWhere += "order_id = " + Long.parseLong(order_id);
						break;
					}
				}
			} catch(NullPointerException e) {
				memberWhere = "";
				orderWhere = "";
			} catch(NumberFormatException e) {
				memberWhere = "";
				orderWhere = "";
			}
			OrderSheet mOS = new OrderSheet();		// mOS = memberOrderSheet
			if(memberWhere.equals(" WHERE M.IS_DELETED=0") == false) {		// 会員テーブルから検索するとき
				List<Member> memberList = com.goodjob.dao.MemberDAO.memberSearchExecuteQuery(
						memberSql + memberWhere + " AND M.COMPANY_ID=C.COMPANY_ID");
				if(memberList.size() != 0) {
					for(Member m : memberList) {	// 会員情報を注文受付票リストにセット
						mOS.setMember(m);
						List<Order> mo = com.goodjob.dao.OrderSearchDao.executeQuery(	// 会員コードから注文情報を取得
							" WHERE member_id = " + m.getMember_id());
						for(Order o : mo) {
							mOS.setOrder(o);
							mOS.setProductList(com.goodjob.dao.OrderItemDao.searchProduct(o.getOrder_id()));	// 会員コードから注文商品情報を取得
						}
						memberOSL.add(mOS);
					}
				}
			}

			OrderSheet oOS = new OrderSheet();		// mOS = memberOrderSheet
			if(orderWhere.equals("") == false) {		// 注文テーブルから検索するとき
				List<Order> orderList = com.goodjob.dao.OrderSearchDao.executeQuery(orderWhere);
				if(orderList.size() != 0) {
					for(Order o : orderList) {	// 会員情報を注文受付票リストにセット
						oOS.setOrder(o);
						oOS.setProductList(com.goodjob.dao.OrderItemDao.searchProduct(o.getOrder_id()));
						oOS.setMember(com.goodjob.dao.MemberDAO.searchMember(o.getMember_id()));	// 会員コードから注文情報を取得
						orderOSL.add(oOS);
					}
				}
			}

			if(memberOSL.size() != 0 && orderOSL.size() != 0) {
				for(OrderSheet mos : memberOSL) {
					for(OrderSheet oos : orderOSL) {
						if(mos.getOrder().getOrder_id() == oos.getOrder().getOrder_id()) {
							resultOSL.add(mos);
						}
					}
				}
			}else if(memberOSL.size() != 0) {
				for(OrderSheet mos : memberOSL) {
					resultOSL.add(mos);
				}
			}else if(orderOSL.size() != 0) {
				for(OrderSheet oos : orderOSL) {
					resultOSL.add(oos);
				}
			}

//			String[] chkval = new String[6];
//			if(checks.contains("date")) { chkval[0] = " value=\"date\""; }
//			if(checks.contains("staff")) { chkval[1] = " value=\"staff\""; }
//			if(checks.contains("company_name")) { chkval[2] = " value=\"company_name\""; }
//			if(checks.contains("member_number")) { chkval[3] = " value=\"\"member_number"; }
//			if(checks.contains("name")) { chkval[4] = " value=\"name\""; }
//			if(checks.contains("order_id")) { chkval[5] = " value=\"order_id\""; }
//
//			String[] condition = {"<input type=\"hidden\" name=\"chkdate\"" + chkval[0] + ">",
//					"<input type=\"hidden\" name=\"date_min\" value =\"" + sMinDate + "\">",
//					"<input type=\"hidden\" name=\"date_max\" value =\"" + sMaxDate + "\">",
//					"<input type=\"hidden\" name=\"chkstaff\"" + chkval[1] + ">",
//					"<input type=\"hidden\" name=\"staff\" value =\"" + staff + "\">",
//					"<input type=\"hidden\" name=\"chkcompany_name\"" + chkval[2] + ">",
//					"<input type=\"hidden\" name=\"company_name\" value =\"" + company_name + "\">",
//					"<input type=\"hidden\" name=\"chkmember_number\"" + chkval[3] + ">",
//					"<input type=\"hidden\" name=\"member_number\" value =\"" + member_number + "\">",
//					"<input type=\"hidden\" name=\"chkname\"" + chkval[4] + ">",
//					"<input type=\"hidden\" name=\"name\" value =\"" + name + "\">",
//					"<input type=\"hidden\" name=\"chkorder_id\"" + chkval[5] + ">",
//					"<input type=\"hidden\" name=\"order_id\" value =\"" + order_id + "\">"};
			session.setAttribute("resultList", resultOSL);
//			session.setAttribute("condition", condition);
			request.getRequestDispatcher("ordersearchresult.jsp").forward(request, response);
		}else {
			request.setAttribute("msg", "検索条件にチェックが入っていません。");
			request.getRequestDispatcher("ordersearch.jsp").forward(request, response);
		}
	}

	private String addWhereOrAnd(String where) {
		if(where.equals("")) {
			return " WHERE ";
		} else {
			return " AND ";
		}
	}

	private void textCheck(String txt, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(txt.equals("")) {
			request.setAttribute("msg", "チェックが入っている項目に条件が入力されていません。");
			request.getRequestDispatcher("ordersearch.jsp").forward(request, response);
		}
	}
}
