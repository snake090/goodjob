package com.goodjob.order;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.goodjob.dao.OrderInsertDAO;
import com.goodjob.dto.Member;
import com.goodjob.dto.Order;
import com.goodjob.dto.OrderSheet;
import com.goodjob.dto.Product;

/**
 * Servlet implementation class OrderCheckServlet
 */
@WebServlet("/OrderCheck")
public class OrderCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderCheckServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//注文情報表示

		HttpSession session = request.getSession();

		Order order = (Order) session.getAttribute("buyOrder");
		HashMap<Integer, Product> buyProductMap = (HashMap<Integer, Product>) session.getAttribute("buyProductMap");

		int sumPrice = 0;
		for (Product product : new ArrayList<Product>(buyProductMap.values())) {
			System.out.println(product);
			product.setPrice(product.getQuantity()*product.getUnitPrice());
			sumPrice += product.getPrice();
		}
		request.setAttribute("sumPrice", sumPrice);

		//分割払いの場合だけ計算してセッションに入れる
		int commission = 0;
		if(order.getPayment_category()==1){
		double comm = sumPrice*0.03;
		commission = (int)(comm+0.5);
		}
		request.setAttribute("commission", commission);
		request.setAttribute("totalPrice", sumPrice+commission);


		request.getRequestDispatcher("order_create/orderCheck.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//OrderSheetにまとめてDAOにまわす

		String orderStaff = request.getParameter("orderStaff");

		HttpSession session = request.getSession();
		Member buyMember = (Member) session.getAttribute("buyMember");
		HashMap<String, Product> buyProductMap = (HashMap<String, Product>) session.getAttribute("buyProductMap");
		Order order = (Order) session.getAttribute("buyOrder");
		order.setOrder_staff(orderStaff);

		OrderSheet newOrder = new OrderSheet();
		newOrder.setOrder(order);
		newOrder.setMember(buyMember);
		newOrder.setProductList(new ArrayList<Product>(buyProductMap.values()));



		Long order_id = OrderInsertDAO.insertOrderReciept(newOrder);
		if(order_id!=0L){
			System.out.println("check");
			newOrder.getOrder().setOrder_id(order_id);
			session.setAttribute("newOrder", newOrder);
		}

		System.out.println("owari");

		session.invalidate();

		response.sendRedirect("index.html");

	}

}
