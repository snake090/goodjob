package com.goodjob.order;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.goodjob.dto.Order;

/**
 * Servlet implementation class PaymentCheckServlet
 * @author 大村祐稀
 */
@WebServlet("/PaymentCheckServlet")
public class PaymentCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaymentCheckServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = request.getRequestDispatcher("order_create/paymentCheck.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String payment = request.getParameter("payment");
		HttpSession session = request.getSession();
		Order buyOrder = (Order) session.getAttribute("buyOrder");
		buyOrder.setPayment_category(Integer.parseInt(payment));
		if (payment.equals("1")) {
			String division = request.getParameter("division");
			buyOrder.setDivision(Integer.parseInt(division));
			Calendar cal = Calendar.getInstance();
			cal.set(Calendar.MONTH, cal.get(Calendar.MONTH)+1);
			cal.set(Calendar.DAY_OF_MONTH,1);
			Date date = cal.getTime();
			//SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			buyOrder.setDeduction_date(new java.sql.Date(date.getTime()));

		} else if (payment.equals("2")) {
			String bank = request.getParameter("bank");
			System.out.println(bank);
			buyOrder.setFrom_bank(bank);
		}

		System.out.println(buyOrder.getShipping_address());
		session.setAttribute("buyOrder", buyOrder);
		response.sendRedirect("OrderCheck");
	}

}
