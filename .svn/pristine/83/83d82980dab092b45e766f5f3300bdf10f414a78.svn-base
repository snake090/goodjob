package com.goodjob.validator;

import java.util.ArrayList;
import java.util.List;

import com.goodjob.dto.Order;

public class InputDeliveryFormValidator {

	public static final List<String> validate(Order order) {

		List<String> errorList = new ArrayList<>();

		String name = order.getShipping_name();
		if (name == null || name.equals("")) {
			errorList.add("お名前を入力してください。");
		}

		String zipCode = order.getShipping_zip_code();
		if (zipCode == null || zipCode.equals("")) {
			errorList.add("郵便番号を入力してください。");
		}

		String address = order.getShipping_address();
		if (address == null || address.equals("")) {
			errorList.add("住所を入力してください。");
		}

		String tel = order.getShipping_phone_number();
		if (tel == null || tel.equals("")) {
			errorList.add("電話番号を入力してください。");
		}

		return errorList;
	}
}
