package com.goodjob.order;

import java.io.IOException;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.goodjob.dto.Product;

/**
 * Servlet implementation class RemoveProductServlet
 */
@WebServlet("/ProductRemoveServlet")
public class ProductRemoveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductRemoveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String removeTargetProductNo = request.getParameter("productNo");
		System.out.println(removeTargetProductNo);

		if (removeTargetProductNo != null) {
			System.out.println(removeTargetProductNo);
			HttpSession session = request.getSession();

			Map<Integer, Product> buyProductMap = (Map<Integer, Product>) session.getAttribute("buyProductMap");
			buyProductMap.remove(Integer.parseInt(removeTargetProductNo));
			session.setAttribute("buyProductMap", buyProductMap);
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("productCheck.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
