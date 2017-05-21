package com.goodjob.order;

import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.goodjob.dao.ItemDao;
import com.goodjob.dto.Item;
import com.goodjob.dto.Order;
import com.goodjob.dto.Product;
import com.goodjob.validator.ProductSearchFormValidator;

/**
 * Servlet implementation class ProductSearch
 * @author 大村祐稀
 * 商品テーブルから該当する商品を検索するサーブレット
 */
@WebServlet("/ProductSearchServlet")
public class ProductSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Map<Integer, Product> buyProductMap = new HashMap<>();
	private int buyProductCount = 0;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductSearchServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();

		Order order = (Order) session.getAttribute("buyOrder");
		if (order != null) {
			session.removeAttribute("buyOrder");
		}

		Map<Integer, Product> buyProductMap = (Map<Integer, Product>) session.getAttribute("buyProductMap");
		if (buyProductMap == null) {
			session.setAttribute("buyProductMap", buyProductMap);
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("order_create/productCheck.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String gou = request.getParameter("gou");
		String page = request.getParameter("page");
		String ban = request.getParameter("ban");

		// 号・頁・番が入力されていないときの処理
		List<String> errorList = ProductSearchFormValidator.validate(gou, page, ban);
		if (errorList == null || errorList.size() > 0) {
			request.setAttribute("errorList", errorList);
			RequestDispatcher dispatcher = request.getRequestDispatcher("order_create/productCheck.jsp");
			dispatcher.forward(request, response);
		}

		// 頁の桁あわせ
		if (page.matches("[0-9]{3}")){
			page = "0" + page;
		} else if (page.matches("[0-9]{2}")) {
			page = "00" + page;
		} else if (page.matches("[0-9]{1}")) {
			page = "000" + page;
		}

		// 番の桁あわせ
		if (ban.matches("[0-9]{2}")) {
			ban = "0" + ban;
		} else if (ban.matches("[0-9]{1}")) {
			ban = "00" + ban;
		}

		// 号と頁と番をあわせて、商品番号を作成する。
		long itemNo = Long.parseLong(gou + page + ban);
		// 該当する商品を検索する。
		Item item = ItemDao.searchItem(itemNo);

		// 該当する商品が存在しないときの処理
		if (item == null) {
			HttpSession session = request.getSession();
			Map<Integer, Product> buyProductMap = (Map<Integer, Product>) session.getAttribute("buyProductMap");
			session.setAttribute("buyProductMap", buyProductMap);
			request.setAttribute("noProductErrorMsg", "該当する商品が見つかりません。");
			RequestDispatcher dispatcher = request.getRequestDispatcher("order_create/productCheck.jsp");
			dispatcher.forward(request, response);
		}
		// 該当する商品が存在していたときの処理
		else {
			Product product = new Product();
			product.setProductId(item.getItem_number());
			product.setProductName(item.getItem_name());
			product.setUnitPrice(item.getUnit_price());
			product.setQuantity(1);
			product.setPrice(product.getUnitPrice() * product.getQuantity());

			// 商品の中に色配列があるときの処理
			if (item.getColors() != null) {
				product.setColors(Arrays.asList(item.getColors().split(",")));
			}

			// 商品の中に柄配列があるときの処理
			if (item.getPatterns() != null) {
				product.setPatterns(Arrays.asList(item.getPatterns().split(",")));
			}

			// 商品の中にサイズ配列があるときの処理
			if (item.getSizes() != null) {
				product.setSizes(Arrays.asList(item.getSizes().split(",")));
			}

			product.setExpirationDate(item.getExpiration_date());

			// 有効期限切れをチェックするときの処理
			Date date = new Date();
			if (date.compareTo(product.getExpirationDate()) > 0) {
				product.setNotes("有効期限切れです。");
			} else {
				product.setNotes("");
			}

			buyProductMap.put(buyProductCount, product);
			buyProductCount++;
		}

		HttpSession session = request.getSession();
		session.setAttribute("buyProductMap", buyProductMap);

		RequestDispatcher dispatcher = request.getRequestDispatcher("order_create/productCheck.jsp");
		dispatcher.forward(request, response);
	}

}
