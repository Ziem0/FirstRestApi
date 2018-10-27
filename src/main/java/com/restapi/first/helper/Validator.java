package com.restapi.first.helper;

public class Validator {

	public static boolean isIdCorrect(String id) {
		return id.matches("^[0-9]+$");
	}
}
