package com.goodjob.order;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
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
 * @author Hayeon Cho
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
		for (Product product : new ArrayList<Product>(buyProductMap.values())) {	//Mapのvaluesをリストに移す
			int zeroCount = 10-String.valueOf(product.getProductId()).length();	//商品番号の桁数を戻す
			if(zeroCount>0){
				String zero="";
				for (int i = 0; i < zeroCount; i++) {
					zero+="0";
				}
				product.setProductIdString(zero+String.valueOf(product.getProductId()));
			}
			product.setPrice(product.getQuantity()*product.getUnitPrice());
			sumPrice += product.getPrice();
		}
		request.setAttribute("sumPrice", sumPrice);

		//分割払いの場合だけ計算してセッションに入れる
		int commission = 0;
		if(order.getPayment_category()==1&&order.getDivision()!=1){
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

		//OrderSheetにまとめてDAOに渡す

		String orderStaff = request.getParameter("orderStaff");

		HttpSession session = request.getSession();
		Member buyMember = (Member) session.getAttribute("buyMember");
		HashMap<String, Product> buyProductMap = (HashMap<String, Product>) session.getAttribute("buyProductMap");
		Order order = (Order) session.getAttribute("buyOrder");
		order.setOrder_staff(orderStaff);
		order.setShipping_address(order.getShipping_address().replace("____", " "));	//住所と建物名を区切る文字をなくす
		Calendar cal = Calendar.getInstance();
		Date utilDate = cal.getTime();
		java.sql.Date today = new java.sql.Date(utilDate.getTime());
		order.setOrder_date(today);

		OrderSheet newOrder = new OrderSheet();
		newOrder.setOrder(order);
		newOrder.setMember(buyMember);
		newOrder.setProductList(new ArrayList<Product>(buyProductMap.values()));



		Long order_id = OrderInsertDAO.insertOrderReciept(newOrder);	//DBに入った注文番号をもらって表示する
		if(order_id!=0L){
			newOrder.getOrder().setOrder_id(order_id);
			session.setAttribute("order_sheet", newOrder);
		}else{
			session.setAttribute("failed", "注文登録に失敗しました。");
			response.sendRedirect("/goodJob/OrderCheck");
		}


		session.setAttribute("back", false);
		response.sendRedirect("orderview");


	}

}
