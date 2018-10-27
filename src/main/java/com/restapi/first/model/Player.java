package com.restapi.first.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@NamedQueries({@NamedQuery(name = "Player.getAll", query = "select p from Player p"),
@NamedQuery(name = "Player.getById", query = "select p from Player p where p.id = :searchedId")})
@Entity
public class Player implements Jsonable, Saveable{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	@Column(nullable = false)
	private String name;
	@Enumerated(EnumType.STRING)
	private Position position;
	@JsonBackReference
	@ManyToOne
	private Team team;

	public Player(String name, Position position) {
		this.name = name;
		this.position = position;
	}

	public Player(String name, Position position, Team team) {
		this.name = name;
		this.position = position;
		this.team = team;
	}

	public Player() {
	}

	@Override
	public String toString() {
		return "Player{" +
				"id=" + id +
				", name='" + name + '\'' +
				", position=" + position +
				", team="  +
				'}';
	}

	public String toJSON() throws JsonProcessingException {
		ObjectMapper mapper = new ObjectMapper();
		return mapper.writerWithDefaultPrettyPrinter().writeValueAsString(this);
	}

	@Deprecated
	@Override
	public void setCapacity(String capacity) {
	}
}
