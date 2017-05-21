package com.goodjob.member;

public class MemberInspection {

	public static String intInspection(String name,String target){
		
		if(target==null||"".equals(target)){
			return name+"を入力してください";
		}
		try {
			Integer.parseInt(target);
		} catch (NumberFormatException e) {
			return "数字を入力してください";
		}
		return "";
	}
	
	public static String StringInspection(String name,String target){
		
		if(target==null||"".equals(target)){
			return name+"を入力してください";
		}
		return "";
	}
}
