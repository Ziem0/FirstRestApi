package com.restapi.first.helper;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.restapi.first.model.*;

import javax.persistence.*;
import java.util.List;
import java.util.Map;

public class Manager {

	public static String getRequestedObject(String id, Class cls) throws JsonProcessingException {

		EntityManagerFactory emf = Persistence.createEntityManagerFactory("myrestapiPU");
		EntityManager em = emf.createEntityManager();

		String response;

		if (id == null) {
			List<Jsonable> getAll = em.createNamedQuery(cls.getSimpleName()+".getAll", cls).getResultList();
			response = JsonHandler.getJsons(getAll);

		} else {
			long lId = (long) Integer.parseInt(id);

			Jsonable getById = null;
			try {
				getById = (Jsonable) em.createNamedQuery(cls.getSimpleName() + ".getById", cls)
						.setParameter("searchedId", lId)
						.getSingleResult();
			} catch (Exception e) {
				System.out.println("Id doesn't exist");;
			}

			if (getById == null) {
				response = "Indicated " + cls.getSimpleName() + " id doesn't exist";
			} else {
				response = getById.toJSON();
			}
		}

		em.close();
		emf.close();

		return response;
	}

	public static void createRequestedObjects(Map<String,String> da) {
		Team team = new Team("JUVE");

		Player player = new Player("Lebron", Position.SF);
		Team team1 = new Team("LAL");
		Hall hall = new Hall("Honda City", 4000);
		player.setTeam(team1);
		team1.setHall(hall);
		team1.addPlayer(player);
		hall.setTeam(team1);

		EntityManagerFactory emf = Persistence.createEntityManagerFactory("myrestapiPU");
		EntityManager em = emf.createEntityManager();

		EntityTransaction tx = em.getTransaction();


		tx.begin();

		em.persist(player);
		em.persist(team);
		em.persist(team1);
		em.persist(hall);

		tx.commit();

		em.close();
		emf.close();
	}

	public static boolean deleteRequestedObject(Class cls, String id) {

		long lId = (long) Integer.parseInt(id);

		EntityManagerFactory emf = Persistence.createEntityManagerFactory("myrestapiPU");
		EntityManager em = emf.createEntityManager();

		EntityTransaction transaction = em.getTransaction();

		transaction.begin();

		Object object = em.find(cls, lId);

		if (object == null) {
			return false;
		} else {
			em.remove(object);
		}

		transaction.commit();
		em.close();
		emf.close();
		return true;
	}

	public static boolean updateRequestedObject(Class<Saveable> cls, String id, Map<String, String> data) {

		long lId = (long) Integer.parseInt(id);

		EntityManagerFactory emf = Persistence.createEntityManagerFactory("myrestapiPU");
		EntityManager em = emf.createEntityManager();

		EntityTransaction transaction = em.getTransaction();

		transaction.begin();

		Saveable object = em.find(cls, lId);

		if (object == null) {
			return false;
		} else {
			object.setName(data.get("name"));
			if (data.get("capacity") != null) {
				object.setCapacity("capacity");
			}
		}

		transaction.commit();

		em.close();
		emf.close();

		return true;
	}

}
