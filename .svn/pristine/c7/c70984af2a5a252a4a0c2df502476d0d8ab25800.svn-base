package com.goodjob.validator;

import java.util.ArrayList;
import java.util.List;

public class ProductSearchFormValidator {

	public static final List<String> validate(String gou, String page, String ban) {

		List<String> errorList = new ArrayList<>();

		if (gou == null || gou.equals("")) {
			errorList.add("号を入力してください。");
		}

		if (page == null || page.equals("")) {
			errorList.add("頁を入力してください。");
		}

		if (ban == null || ban.equals("")) {
			errorList.add("番を入力してください。");
		}

		return errorList;
	}
}
