package com.goodjob.member;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.goodjob.dao.CompanyDao;
import com.goodjob.dao.MemberDAO;
import com.goodjob.dto.Member;

/**
 * Servlet implementation class MemberChangeAct
 * @author 弘中翔太郎
 * @version 1.0 
 */
@WebServlet("/MemberChangeAct")
public class MemberChangeAct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MemberChangeAct() {
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
	 * 会員情報を変更して、変更結果を渡す
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String company_name="";
		HttpSession session=request.getSession();
		company_name=(String)session.getAttribute("company");
		boolean company_name_change=true;
		Member member2=(Member)session.getAttribute("member3"); 
		String member_num=String.valueOf(member2.getMember_number());
		System.out.println("memno"+member_num);
		System.out.println("cname"+company_name);
		if(company_name==null||company_name.equals("")){
			company_name=member2.getCompany_name();
			company_name_change=false;
			System.out.println("cname"+company_name);
		}
		System.out.println("会社名"+company_name);
		ArrayList<String>errorName=new ArrayList<>();
		String error="";
		String error2="";
		Member member=new Member();
		//ここから検査

		member.setCompany_name(company_name);


		String member_number=request.getParameter("memberNo");
		error=MemberInspection.intInspection("会員番号", member_number);
		int member_number_int=0;
		if("".equals(error)){
			member_number_int=Integer.parseInt(member_number);
			if(member_number_int<0){
				error2=" 会員番号は正の整数で入力してください";
			}
			member.setMember_number(member_number_int);
		}else{
			errorName.add(error);
		}


		String name=request.getParameter("name");
		error=MemberInspection.StringInspection("氏名", name);
		if("".equals(error)){
			member.setName(name);
		}else{
			errorName.add(error);
		}


		String furigana=request.getParameter("furigana");
		System.out.println("フリガナ"+furigana);
		error=MemberInspection.StringInspection("フリガナ", furigana);
		if("".equals(error)){
			if (!furigana.matches("^[\\u30A0-\\u30FF]+$")) {
				error2="フリガナはカタカナで入力してください";
			}else{
				member.setFurigana(furigana);
			}
		}else{
			errorName.add(error);
		}

		String job=request.getParameter("job");
		error=MemberInspection.StringInspection("所属名", job);
		if("".equals(error)){
			member.setJob(job);
		}else{
			errorName.add(error);
		}

		String phone_number=request.getParameter("phoneNumber");
		error=MemberInspection.StringInspection("連絡先電話番号", phone_number);
		if("".equals(error)){
			member.setPhone_number(phone_number);
		}else{
			errorName.add(error);
		}

		String category=request.getParameter("category");
		error=MemberInspection.StringInspection("連絡先区分", category);
		if("".equals(error)){
			member.setCategory(category);
		}else{
			errorName.add(error);
		}

		String entry_date=request.getParameter("nichiji");
		error=MemberInspection.StringInspection("入会日", entry_date);
		if("".equals(error)){
			Date date=null;
			try{
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				date = format.parse(entry_date);  
				member.setEntry_date(date);
			}catch (Exception e) {
				e.printStackTrace();
				error="dateに変換失敗";
			}

		}else{
			errorName.add(error);
		}


		String credit_amount=request.getParameter("creditAmount");
		error=MemberInspection.intInspection("与信額",credit_amount);
		int credit;
		if("".equals(error)){
			credit=Integer.parseInt(credit_amount);
			member.setCredit_amount(credit);
			if(credit<0){
				error2+=" 与信額は正の整数で入力してください";
			}
		}else{
			errorName.add(error);
		}

		String notes=request.getParameter("notes");
		System.out.println("notes"+notes);
		member.setNotes(notes);
		error="";
		int i=0;
		for(String list:errorName){
			error+=list;
			if(i!=errorName.size()-1&&i!=0){
				error+=",";
			}
			i++;
		}
		if(!"".equals(error)){
			error+="を入力してください ";
		}
		if(!"".equals(error+error2)){
			errorShow(error+error2, request, response, member);
		}else{
			int companyid=CompanyDao.getCompanyId(company_name);
			System.out.println("companyid"+companyid);
			if(companyid>=0){
				String comID=String.valueOf(companyid);
				String member_number_Check="";
				int check=0;
				if(company_name_change){
						member_number_Check="SELECT COUNT (*) AS CNT FROM MEMBER"
						+ " WHERE COMPANY_ID="+comID+
						" AND MEMBER_NUMBER="+member_number+
						" AND is_deleted =0";
						check=MemberDAO.memberCountExecuteQuery(member_number_Check);
				}else{
					if(member2.getMember_number()!=member_number_int){
						member_number_Check="SELECT COUNT (*) AS CNT FROM MEMBER"
						+ " WHERE COMPANY_ID="+comID+
						" AND MEMBER_NUMBER="+member_number+
						" AND is_deleted =0";
						check=MemberDAO.memberCountExecuteQuery(member_number_Check);
					}
				}
				
				if(check==0){
					String MemberUpdate="UPDATE MEMBER SET COMPANY_ID="+comID+",MEMBER_NUMBER="+member_number
							+",NAME= '"+name+"',FURIGANA= '"+furigana+"'"+",JOB= '"+job+"',PHONE_NUMBER= '"+phone_number
							+"',CATEGORY='"+category+"',ENTRY_DATE=DATE'"+entry_date+"',CREDIT_AMOUNT="+credit_amount+",NOTES='"
							+notes+"' WHERE MEMBER_NUMBER="+member_num +" AND COMPANY_ID="+companyid
							+" AND IS_DELETED=0";

					MemberDAO.memberExecuteUpdate(MemberUpdate);

					System.out.println("遷移");

					session.invalidate();
					HttpSession session2=request.getSession();
					
					String sql="SELECT M.MEMBER_ID,M.MEMBER_NUMBER,M.COMPANY_ID,"
							+ "M.NAME,M.FURIGANA,M.JOB,M.PHONE_NUMBER,M.CATEGORY,"
							+ "M.ENTRY_DATE,M.CREDIT_AMOUNT,M.NOTES,C.COMPANY_NAME "
							+ "FROM MEMBER M  ,COMPANY C WHERE M.is_deleted =0 "
							+ " AND M.MEMBER_NUMBER="+member_number
							+ " AND M.COMPANY_ID=C.COMPANY_ID"
							+ " AND C.COMPANY_NAME='"+company_name+"'";
					ArrayList<Member> members=MemberDAO.memberSearchExecuteQuery(sql);
					int size=members.size();
					System.out.println("size:"+size);
					session2.setAttribute("member", members);
	
					request.setAttribute("sucsess", "変更しました");

					request.getRequestDispatcher("M1.jsp").forward(request, response);

				}else{
					error="会員番号が重複しています";
					errorShow(error, request, response,member);
				}
			}
		}
	}
	/**
	 * 
	 * @param error String エラー情報
	 * @param request
	 * @param response
	 * @param member Member 会員情報
	 * @throws ServletException
	 * @throws IOException
	 * エラー情報を渡す
	 */
	private void errorShow(String error,HttpServletRequest request, HttpServletResponse response,Member member)throws ServletException, IOException {
		request.setAttribute("member2", member);
		request.setAttribute("error", error);
		request.getRequestDispatcher("M4.jsp").forward(request, response);
	}

}
