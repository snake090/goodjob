package com.goodjob.order;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.goodjob.dto.Order;
import com.goodjob.validator.InputDeliveryFormValidator;

/**
 * Servlet implementation class InputDeliveryServlet
 */
@WebServlet("/InputDeliveryServlet")
public class InputDeliveryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public InputDeliveryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = request.getRequestDispatcher("order_create/inputDelivery.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String category = request.getParameter("category");
		String zipCode = request.getParameter("zipCode");
		String address = request.getParameter("address");
		String building = request.getParameter("building");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String other = request.getParameter("other");

		Order buyOrder = new Order();
		buyOrder.setShipping_category(Integer.parseInt(category));
		buyOrder.setShipping_zip_code(zipCode);
		buyOrder.setShipping_address(address + building);
		buyOrder.setShipping_name(name);
		buyOrder.setShipping_phone_number(tel);
		buyOrder.setShipping_if_out(other);

		List<String> errorList = InputDeliveryFormValidator.validate(buyOrder);
		System.out.println("size = " + errorList.size());
		if (errorList.size() > 0) {
			request.setAttribute("errorList", errorList);
			RequestDispatcher dispatcher = request.getRequestDispatcher("order_create/inputDelivery.jsp");
			dispatcher.forward(request, response);
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("buyOrder", buyOrder);
			RequestDispatcher dispatcher = request.getRequestDispatcher("order_create/paymentCheck.jsp");
			dispatcher.forward(request, response);
		}


	}
}
