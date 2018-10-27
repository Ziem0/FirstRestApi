package com.restapi.first.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@NamedQueries({@NamedQuery(name = "Hall.getAll", query = "select h from Hall h"),
		@NamedQuery(name = "Hall.getById", query = "select h from Hall h where h.id = :searchedId")})
@Entity
public class Hall implements Jsonable , Saveable{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	@Column(nullable = false)
	private String name;
	@JsonBackReference
	@OneToOne(mappedBy = "hall", cascade = CascadeType.REMOVE)
	private Team team;
	@Column(nullable = false)
	private int capacity;

	public Hall(String name, int capacity) {
		this.name = name;
		this.capacity = capacity;
	}

	public Hall(String name, Team team, int capacity) {
		this.name = name;
		this.team = team;
		this.capacity = capacity;
	}

	public Hall() {
	}

	@Override
	public String toString() {
		return "Hall{" +
				"id=" + id +
				", name='" + name + '\'' +
				", team="  +
				", capacity=" + capacity +
				'}';
	}

	public String toJSON() throws JsonProcessingException {
		ObjectMapper mapper = new ObjectMapper();
		return mapper.writerWithDefaultPrettyPrinter().writeValueAsString(this);
	}

	@Override
	public void setCapacity(String capacity) {
		this.capacity = Integer.valueOf(capacity);
	}
}
