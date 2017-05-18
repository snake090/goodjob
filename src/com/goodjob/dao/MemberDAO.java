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
	static{
		try{
			Class.forName("com.ibm.db2.jcc.DB2Driver");
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
	public static Boolean memberExecuteUpdate(String sql){

		return false;
	}
	public static int memberCountExecuteQuery(int companyID){
		//String sql="SELECT COUNT(*) FROM MEMBER WHERE COMPANY_ID="+companyID+"I";
		return 0;
	}
	/**
	 *
	 * @param sql String SELECT句
	 * @return　ArrayList<Member>
	 */
	private static ArrayList<Member>ExecuteQuery(String sql){
		Connection con=null;
		Statement stmt=null;
		ArrayList<Member> members=new ArrayList<>();
		try{
			//sql="SELECT *FROM MEMBER";
			con=DriverManager.getConnection("jdbc:db2://192.168.71.250:50000/orderDB","db2admin","pass");
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

	public static Member searchMember(int member_id){
		Member result = null;
		Connection con=null;
		Statement stmt=null;
		ArrayList<Member> members=new ArrayList<>();
		try{
			con=DriverManager.getConnection("jdbc:db2://192.168.71.250:50000/orderDB","db2admin","pass");
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


}
