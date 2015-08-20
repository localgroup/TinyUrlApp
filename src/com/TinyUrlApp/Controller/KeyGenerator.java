package com.TinyUrlApp.Controller;

public class KeyGenerator {
	private static String charSet = "0123456789abcdefghijklmnopqrstuvwxyz";
	private static int charSetLength = charSet.length();
	private static char charSetFirstChar = charSet.charAt(0);
	private static char charSetLastChar = charSet.charAt(charSetLength - 1);
	public static String lastGeneratedKey = "0";
	

	public  static  String generateNextOf(String key) {
		if (key.length() == 0)
			return String.valueOf(charSetFirstChar);
		int l = key.length();
		char last = key.charAt(l - 1);
		String newKey = null;
		if (last == charSetLastChar) {
			newKey = generateNextOf(key.substring(0, l - 1))
					+ charSet.charAt(0);
		} else {
			newKey = key.substring(0, l - 1)
					+ charSet.charAt(charSet.indexOf(last) + 1);
		}
		lastGeneratedKey = newKey;
		return newKey;
	}

}
