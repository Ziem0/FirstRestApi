package com.restapi.first.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.LinkedList;
import java.util.List;

@Getter
@Setter
@NamedQueries({@NamedQuery(name = "Team.getAll", query = "select t from Team t"),
@NamedQuery(name = "Team.getById", query = "select t from Team t where t.id = :searchedId"),
@NamedQuery(name = "Team.getByName", query = "select t from Team t where t.name = :searchedName")
})
@Entity
public class Team implements Jsonable, Saveable{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	@Column(nullable = false)
	private String name;
	@OneToMany(mappedBy = "team")
	private List<Player> players;
	@JsonManagedReference
	@OneToOne
	private Hall hall;

	public Team(String name) {
		this.name = name;
		this.players = new LinkedList<>();
	}

	public Team(String name, List<Player> players, Hall hall) {
		this.name = name;
		this.players = players;
		this.hall = hall;
	}

	public Team() {
	}

	@Override
	public String toString() {
		return "Team{" +
				"id=" + id +
				", name='" + name + '\'' +
				", players=" + players +
				", hall=" + hall +
				'}';
	}

	@Override
	public String toJSON() throws JsonProcessingException {
		ObjectMapper mapper = new ObjectMapper();
		return mapper.writerWithDefaultPrettyPrinter().writeValueAsString(this);
	}

	public void addPlayer(Player player) {
		this.players.add(player);
	}

	@Deprecated
	@Override
	public void setCapacity(String capacity) {
	}
}
