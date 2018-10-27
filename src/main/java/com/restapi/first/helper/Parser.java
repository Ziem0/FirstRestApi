package com.restapi.first.helper;

import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Map;

public class Parser {

	public static Map<String, String> queryParser(String query) {
		Map<String, String> parsedQuery = new HashMap<>();

		String[] pairs = query.split("&");
		for (String pair : pairs) {
			String[] kv = pair.split("=");
			String value = URLDecoder.decode(kv[1]);
			parsedQuery.put(kv[0], value);
		}
		return parsedQuery;
	}

	public static Map<String, String> requestBodyParser(String data) {
		Map<String, String> parsed = new HashMap<>();
		String[] pairs = data.split(",");

		for (String pair : pairs) {
			String[] kv = pair.split(":");
			String value = URLDecoder.decode(kv[1]).replaceAll("[^a-zA-Z0-9]+","");
			String key = kv[0].replaceAll("[^a-zA-Z0-9+]+", "");
			parsed.put(key, value);
		}
		return parsed;
	}

}
