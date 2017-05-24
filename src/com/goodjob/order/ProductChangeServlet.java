package com.goodjob.order;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.goodjob.dto.Product;

/**
 * Servlet implementation class ProductChangeServlet
 * @author 大村祐稀
 */
@WebServlet("/ProductChangeServlet")
public class ProductChangeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String quantity = request.getParameter("quantity");
		String color = request.getParameter("color");
		String pattern = request.getParameter("pattern");
		String size = request.getParameter("size");

		HttpSession session = request.getSession();
		Map<Integer, Product> buyProductMap = (Map<Integer, Product>) session.getAttribute("buyProductMap");

		Product product = buyProductMap.get(Integer.parseInt(id));
		product.setQuantity(Integer.parseInt(quantity));
		if (color == null || color.equals("")) {
			product.setSelectedColor("");
		} else {
			product.setSelectedColor(color);
		}

		if (pattern == null || pattern.equals("")) {
			product.setSelectedPattern("");
		} else {
			product.setSelectedPattern(pattern);
		}

		if (size == null || size.equals("")) {
			product.setSelectedSize("");
		} else {
			product.setSelectedSize(size);
		}

		product.setPrice(product.getUnitPrice() * product.getQuantity());

		session.setAttribute("buyProductMap", buyProductMap);
	}

}
