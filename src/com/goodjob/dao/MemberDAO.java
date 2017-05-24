package com.goodjob.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.goodjob.dto.Member;

/**
 *
 * @author 弘中翔太郎
 * @version 1.0
 *
 */
public class MemberDAO {
	private static final long serialVersionUID = 1L;
	private static String user = "db2admin";
	private static String password = "pass";
	private static String jdbcDriver = "com.ibm.db2.jcc.DB2Driver";
	private static String jdbcurl = "jdbc:db2://192.168.71.250:50000/ORDERDB";
	static{
		try{
			Class.forName(jdbcDriver);
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}
	}
	/**
	 *
	 * @param sql String SELECT句
	 * @return ArrayList<Member>
	 */
	public static ArrayList<Member> memberSearchExecuteQuery(String sql){
		return ExecuteQuery(sql);
	}
	/**
	 * 
	 * @param sql String INSERT UPDATE DELETE 句
	 * @return rs　結果
	 */
	public static int memberExecuteUpdate(String sql){
		Connection con=null;
		Statement stmt=null;
		int rs=0;
		try{
			con=DriverManager.getConnection(jdbcurl,user,password);
			stmt =con.createStatement();
			System.out.println(sql);
			rs=stmt.executeUpdate(sql);
		}catch(SQLException e){
			System.err.println(e.getMessage());
			e.printStackTrace();
		}finally{
			if(stmt!=null){
				try{
					stmt.close();
				}catch(SQLException e){

				}
			}
			if(con !=null){
				try{
					con.close();
				}catch(SQLException e){

				}
			}

		}
		return rs;
	}
	/**
	 * 
	 * @param sql SELECT COUNT 句
	 * @return count int
	 * 会員数を返す
	 */
	public static int memberCountExecuteQuery(String sql){
		Connection con=null;
		Statement stmt=null;
		int count=0;
		try{
			con=DriverManager.getConnection(jdbcurl,user,password);
			stmt =con.createStatement();
			System.out.println(sql);
			ResultSet rs=stmt.executeQuery(sql);
			if(rs.next()) {
				count =rs.getInt("CNT");

			}
		}catch(SQLException e){
			System.err.println(e.getMessage());
			e.printStackTrace();
		}finally{
			if(stmt!=null){
				try{
					stmt.close();
				}catch(SQLException e){

				}
			}
			if(con !=null){
				try{
					con.close();
				}catch(SQLException e){

				}
			}

		}
		return count;
	}
	/**
	 *
	 * @param sql String SELECT句
	 * @return ArrayList<Member>
	 */
	private static ArrayList<Member>ExecuteQuery(String sql){
		Connection con=null;
		Statement stmt=null;
		ArrayList<Member> members=new ArrayList<>();
		try{
			//sql="SELECT *FROM MEMBER";
			con=DriverManager.getConnection(jdbcurl,user,password);
			stmt =con.createStatement();
			System.out.println(sql);
			ResultSet rs=stmt.executeQuery(sql);
			while (rs.next()) {
				Member member=new Member();
				member.setMember_id(rs.getInt("MEMBER_ID"));
				member.setMember_number(rs.getInt("MEMBER_NUMBER"));
				member.setCompany_id(rs.getInt("COMPANY_ID"));
				member.setName(rs.getString("NAME"));
				member.setFurigana(rs.getString("FURIGANA"));
				member.setJob(rs.getString("JOB"));
				member.setPhone_number(rs.getString("PHONE_NUMBER"));
				member.setCategory(rs.getString("CATEGORY"));
				member.setEntry_date(rs.getDate("ENTRY_DATE"));
				member.setCredit_amount(rs.getInt("CREDIT_AMOUNT"));
				member.setNotes(rs.getString("NOTES"));
				member.setCompany_name(rs.getString("COMPANY_NAME"));
				members.add(member);

			}
		}catch(SQLException e){
			System.err.println(e.getMessage());
			e.printStackTrace();
		}finally{
			if(stmt!=null){
				try{
					stmt.close();
				}catch(SQLException e){

				}
			}
			if(con !=null){
				try{
					con.close();
				}catch(SQLException e){

				}
			}

		}
		int size=members.size();
		return members;
	}

	/**
	 * 
	 * @param member_id int
	 * @return result Member
	 */
	public static Member searchMember(int member_id){
		Member result = null;
		Connection con=null;
		Statement stmt=null;
		ArrayList<Member> members=new ArrayList<>();
		try{
			con=DriverManager.getConnection(jdbcurl,user,password);
			stmt =con.createStatement();
			String sql = "SELECT M.MEMBER_ID, M.MEMBER_NUMBER, M.COMPANY_ID,"
					+ " M.NAME, M.FURIGANA, M.JOB, M.PHONE_NUMBER, M.CATEGORY,"
					+ "M.ENTRY_DATE, M.CREDIT_AMOUNT, M.NOTES, C.COMPANY_NAME"
					+ " FROM MEMBER M, COMPANY C WHERE M.IS_DELETED=0 "
					+ "AND M.MEMBER_ID="+member_id+" AND M.COMPANY_ID=C.COMPANY_ID";
			ResultSet rs=stmt.executeQuery(sql);
			if(rs.next()) {
				result=new Member();
				result.setMember_id(rs.getInt("MEMBER_ID"));
				result.setMember_number(rs.getInt("MEMBER_NUMBER"));
				result.setCompany_id(rs.getInt("COMPANY_ID"));
				result.setName(rs.getString("NAME"));
				result.setFurigana(rs.getString("FURIGANA"));
				result.setJob(rs.getString("JOB"));
				result.setPhone_number(rs.getString("PHONE_NUMBER"));
				result.setCategory(rs.getString("CATEGORY"));
				result.setEntry_date(rs.getDate("ENTRY_DATE"));
				result.setCredit_amount(rs.getInt("CREDIT_AMOUNT"));
				result.setNotes(rs.getString("NOTES"));
				result.setCompany_name(rs.getString("COMPANY_NAME"));
			}
		}catch(SQLException e){
			System.err.println(e.getMessage());
			e.printStackTrace();
		}finally{
			if(stmt!=null){
				try{
					stmt.close();
				}catch(SQLException e){

				}
			}
			if(con !=null){
				try{
					con.close();
				}catch(SQLException e){

				}
			}

		}
		return result;
	}

	/**
	 * 
	 * @param sql String SELECT句
	 * @return result Member
	 */
	public static Member searchMember(String sql){
		Member result = null;
		Connection con=null;
		Statement stmt=null;
		ArrayList<Member> members=new ArrayList<>();
		try{
			con=DriverManager.getConnection(jdbcurl,user,password);
			stmt =con.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			if(rs.next()) {
				result=new Member();
				result.setMember_id(rs.getInt("MEMBER_ID"));
				result.setMember_number(rs.getInt("MEMBER_NUMBER"));
				result.setCompany_id(rs.getInt("COMPANY_ID"));
				result.setName(rs.getString("NAME"));
				result.setFurigana(rs.getString("FURIGANA"));
				result.setJob(rs.getString("JOB"));
				result.setPhone_number(rs.getString("PHONE_NUMBER"));
				result.setCategory(rs.getString("CATEGORY"));
				result.setEntry_date(rs.getDate("ENTRY_DATE"));
				result.setCredit_amount(rs.getInt("CREDIT_AMOUNT"));
				result.setNotes(rs.getString("NOTES"));
				result.setCompany_name(rs.getString("COMPANY_NAME"));
			}
		}catch(SQLException e){
			System.err.println(e.getMessage());
			e.printStackTrace();
		}finally{
			if(stmt!=null){
				try{
					stmt.close();
				}catch(SQLException e){

				}
			}
			if(con !=null){
				try{
					con.close();
				}catch(SQLException e){

				}
			}

		}
		return result;
	}


}
