package com.goodjob.dao;

/**
 * 注文商品および商品テーブルにアクセスするDAO
 * @author 福田航平
 * @version 0.1.1
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.goodjob.dto.Product;

public class OrderItemDao {
	private static String user = "db2admin";
	private static String password = "pass";
	private static String jdbcDriver = "com.ibm.db2.jcc.DB2Driver";
	private static String jdbcurl = "jdbc:db2://192.168.71.250:50000/ORDERDB";

	static{
		try{
			Class.forName(jdbcDriver);
		}catch(ClassNotFoundException e){
			System.out.println("JBDCドライバのロードに失敗しました。");
			e.printStackTrace();
			System.exit(1);
		}
	}

	/**
	 * 注文コードを受け取り注文商品をリスト化して返す
	 * @param order_id long
	 * @return List<Product>
	 */
	public static List<Product> searchProduct(long order_id) {
		Connection con = null;
		Statement stmt = null;
		List<Product> productList = new ArrayList<Product>();
		String sql = "SELECT OI.ITEM_NUMBER, OI.COLOR, OI.PATTERN, OI.SIZE, OI.QUANTITY, OI.SUPPLEMENT,"
					+ " I.ITEM_NAME, I.UNIT_PRICE FROM order_item OI, item I WHERE OI.ORDER_ID = " + order_id + " AND "
						+ "OI.ITEM_NUMBER = I.ITEM_NUMBER";
		try {
			con = DriverManager.getConnection(jdbcurl,user,password);
			stmt = con.createStatement();
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				Product product = new Product();

				product.setProductId(rs.getInt("ITEM_NUMBER"));
				product.setProductName(rs.getString("ITEM_NAME"));
				product.setSelectedColor(rs.getString("COLOR"));
				product.setSelectedPattern(rs.getString("PATTERN"));
				product.setSelectedSize(rs.getString("SIZE"));
				product.setQuantity(rs.getInt("QUANTITY"));
				product.setNotes(rs.getString("SUPPLEMENT"));
				product.setUnitPrice(rs.getInt("UNIT_PRICE"));

				productList.add(product);
			}
		} catch(SQLException e) {
			System.err.println(e.getMessage());
			e.printStackTrace();
		} finally {
			if(stmt != null) {
				try {
					stmt.close();
				} catch(SQLException e) {
				}
			}
			if(con != null) {
				try {
					con.close();
				} catch(SQLException e) {
				}
			}
		}
		return productList;
	}
}
