package com.restapi.first.helper;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.restapi.first.model.Jsonable;

import java.util.ArrayList;
import java.util.List;

public class JsonHandler {

	public static String getJsons(List<Jsonable> list) {
		List<String> jsons = new ArrayList<>();

		for (Jsonable json : list) {
			try {
				jsons.add(json.toJSON());
			} catch (JsonProcessingException e) {
				e.printStackTrace();
			}
		}
		return jsons.toString();
	}

}
