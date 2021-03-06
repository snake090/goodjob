package com.goodjob.member;
/**
 * 
 * @author 弘中翔太郎
 * @version 1.0
 *
 */
public class MemberInspection {

	/**
	 * 
	 * @param name String 変数名
	 * @param target String 検査する値
	 * @return String 検査結果
	 */
	public static String intInspection(String name,String target){
		
		if(target==null||"".equals(target)){
			return name;
		}
		try {
			Integer.parseInt(target);
		} catch (NumberFormatException e) {
			return name+"は数字";
		}
		return "";
	}
	/**
	 * 
	 * @param name String 変数名
	 * @param target String 検査する値
	 * @return String 検査結果
	 */
	public static String StringInspection(String name,String target){
		
		if(target==null||"".equals(target)){
			return name;
		}
		return "";
	}
	/**
	 * @param target String 検査する値
	 * @return Boolean 検査結果
	 */
	public static Boolean StringInspection(String target){
		
		if(target==null||"".equals(target)){
			return false;
		}
		return true;
	}
}
