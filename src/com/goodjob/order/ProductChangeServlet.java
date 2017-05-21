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
 */
@WebServlet("/ProductChangeServlet")
public class ProductChangeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Product tempProduct = new Product();

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductChangeServlet() {
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

		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String quantity = request.getParameter("quantity");
		String color = request.getParameter("color");
		String pattern = request.getParameter("pattern");
		String size = request.getParameter("size");

		HttpSession session = request.getSession();
		Map<Integer, Product> buyProductMap = (Map<Integer, Product>) session.getAttribute("buyProductMap");
		Product product = buyProductMap.get(Integer.parseInt(id));

		tempProduct.setProductId(product.getProductId());
		tempProduct.setProductName(product.getProductName());
		tempProduct.setUnitPrice(product.getUnitPrice());
		tempProduct.setQuantity(Integer.parseInt(quantity));
		tempProduct.setSelectedColor(color);
		tempProduct.setSelectedPattern(pattern);
		tempProduct.setSelectedSize(size);
		tempProduct.setPrice(product.getUnitPrice());
		tempProduct.setNotes(product.getNotes());
		tempProduct.setPatterns(product.getPatterns());
		tempProduct.setColors(product.getColors());
		tempProduct.setSizes(product.getSizes());
		tempProduct.setExpirationDate(product.getExpirationDate());
		tempProduct.setPrice(Integer.parseInt(quantity) * product.getUnitPrice());

		buyProductMap.put(Integer.parseInt(id), tempProduct);
		session.setAttribute("buyProductMap", buyProductMap);
	}

}
