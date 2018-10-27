package com.restapi.first.model;

import com.fasterxml.jackson.core.JsonProcessingException;

public interface Jsonable {
	String toJSON() throws JsonProcessingException;
}
