package com.goodjob.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.goodjob.dto.Order;
import com.goodjob.dto.OrderSheet;
import com.goodjob.dto.Product;

/**
 *
 * @author Hayeon Cho
 * @version 1.0
 *
 */
public class OrderInsertDAO {
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


	public static Long getMaxOrderId(){
		Long result = 0L;
		Connection con=null;
		Statement stmt=null;
		try{
			con=DriverManager.getConnection(jdbcurl,user,password);
			stmt =con.createStatement();

			ResultSet rs = stmt.executeQuery("select max(ORDER_ID) from ORDER");
			if(rs.next()){
				result = rs.getLong(1);
			}

		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {

		}
		return result;
	}


	public static Long insertOrderReciept(OrderSheet os){
		Long result = 0L;
		Connection con=null;
		PreparedStatement pstmt = null;
		Statement stmt=null;
		try{
			//transaction処理
			con=DriverManager.getConnection(jdbcurl,user,password);
			con.setAutoCommit(false);
			stmt =con.createStatement();

			//今最大値のオーダーidを検索して１を足して使う+ロック
			String sql = "select max(order_id) from order";
			ResultSet rs = stmt.executeQuery(sql);
			Long order_id=0L;
			if(rs.next()){
				order_id = rs.getLong(1)+1;
			}

			//order insert
			Order order = os.getOrder();
			String insertOrderSql = "insert into order "
					+ "values (?,?,?,?,?,?,?,?,?,?,?,?,?,current date)";
			pstmt = con.prepareStatement(insertOrderSql);
			pstmt.setLong(1, order_id);
			pstmt.setInt(2, os.getMember().getMember_id());
			pstmt.setInt(3, order.getShipping_category());
			pstmt.setString(4, order.getShipping_zip_code());
			pstmt.setString(5, order.getShipping_address());
			pstmt.setString(6, order.getShipping_name());
			pstmt.setString(7, order.getShipping_phone_number());
			pstmt.setString(8, order.getShipping_if_out());
			pstmt.setInt(9, order.getDivision());
			pstmt.setInt(10, order.getPayment_category());
			pstmt.setString(11, order.getFrom_bank());
			pstmt.setDate(12, order.getDeduction_date());
			pstmt.setString(13, order.getOrder_staff());
			pstmt.executeUpdate();

			//for文でordersheet productlist >order_item insert
			int productCount=0;
			for (Product product : os.getProductList()) {
				String insertProductSQL = "insert into order_item "
						+ "values (default, ?, ?, ?, ?, ?, ?, ?)";
				pstmt = con.prepareStatement(insertProductSQL);
				pstmt.setLong(1, order_id);
				pstmt.setLong(2, product.getProductId());
				pstmt.setString(3, product.getSelectedColor());
				pstmt.setString(4, product.getSelectedPattern());
				pstmt.setString(5, product.getSelectedSize());
				pstmt.setInt(6, product.getQuantity());
				pstmt.setString(7, product.getNotes());
				productCount+=pstmt.executeUpdate();
			}

			//commit;
			//必要?
			if(productCount==os.getProductList().size()){
				con.commit();
				result = order_id;
			}

		}catch (Exception e) {
			e.printStackTrace();
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO 自動生成された catch ブロック
				e1.printStackTrace();
			}

		}finally {
			if(stmt!=null){
				try{
					stmt.close();
				}catch(SQLException e){}
			}
			if(pstmt!=null){
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO 自動生成された catch ブロック
					e.printStackTrace();
				}
			}
			if(con !=null){
				try{
					con.close();
				}catch(SQLException e){}
			}
		}

		return result;

	}


}
