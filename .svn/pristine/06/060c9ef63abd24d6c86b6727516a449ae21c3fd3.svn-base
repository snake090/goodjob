/**
 * 注文と商品の検索を行うDAO
 * @author 福田航平
 * @version 1.0
 */
package com.goodjob.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.goodjob.dto.Order;

public class OrderSearchDao {
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

	public static List<Order> executeQuery(String where) {
		Connection con = null;
		Statement stmt = null;
		List<Order> orderList = new ArrayList<Order>();
		String sql = "SELECT * FROM order";
		try {
			con = DriverManager.getConnection(jdbcurl,user,password);
			stmt = con.createStatement();
			System.out.println(sql + where);
			ResultSet rs = stmt.executeQuery(sql + where);
			while(rs.next()) {
				Order order = new Order();

				order.setOrder_id(rs.getInt("ORDER_ID"));
				order.setMember_id(rs.getInt("MEMBER_ID"));
				order.setShipping_category(rs.getInt("SHIPPING_CATEGORY"));
				order.setShipping_zip_code(rs.getString("SHIPPING_ZIP_CODE"));
				order.setShipping_address(rs.getString("SHIPPING_ADDRESS"));
				order.setShipping_name(rs.getString("SHIPPING_NAME"));
				order.setShipping_phone_number(rs.getString("SHIPPING_PHONE_NUMBER"));
				order.setShipping_if_out(rs.getString("SHIPPING_IF_OUT"));
				order.setDivision(rs.getInt("DIVISION"));
				order.setPayment_category(rs.getInt("PAYMENT_CATEGORY"));
				order.setFrom_bank(rs.getString("FROM_BANK"));
				order.setDeduction_date(rs.getDate("DEDUCTION_DATE"));
				order.setOrder_staff(rs.getString("ORDER_STAFF"));
				order.setOrder_date(rs.getDate("ORDER_DATE"));

				orderList.add(order);
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
		return orderList;
	}
}
