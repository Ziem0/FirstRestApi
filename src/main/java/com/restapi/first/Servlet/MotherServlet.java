package com.restapi.first.Servlet;

import com.restapi.first.helper.Manager;
import com.restapi.first.helper.Parser;
import com.restapi.first.helper.Validator;
import com.restapi.first.model.Hall;
import com.restapi.first.model.Player;
import com.restapi.first.model.Team;
import org.apache.commons.io.IOUtils;

import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

public abstract class MotherServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String idParam = req.getParameter("id");
		String response;

		Class clazz = this.getClass();
		Class neededClass = null;

		neededClass = getaClass(clazz, null);

		if (idParam == null) {
			response = Manager.getRequestedObject(null, neededClass);

		} else {

			if (Validator.isIdCorrect(idParam)) {
				response = Manager.getRequestedObject(idParam, neededClass);

			} else {
				response = "Incorrect data input! Enter correct ID";
			}
		}
		resp.getWriter().write(response);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		ServletInputStream inputStream = req.getInputStream();

		String requestStr = IOUtils.toString(inputStream);

		Map<String, String> parsedData = Parser.requestBodyParser(requestStr);

		Manager.createRequestedObjects(parsedData);

		resp.getWriter().write("Done!");

	}

	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("id");

		Class clazz = this.getClass();
		Class neededClass = null;

		neededClass = getaClass(clazz, null);

		if (!Validator.isIdCorrect(id)) {
			resp.getWriter().write("Incorrect id!");

		} else {

			if (Manager.deleteRequestedObject(neededClass, id)) {
				resp.getWriter().write("Done!");

			} else {
				resp.getWriter().write("No record with number id " + id);
			}
		}
	}

	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");

		ServletInputStream inputStream = req.getInputStream();

		String requestStr = IOUtils.toString(inputStream);

		Map<String, String> parsedData = Parser.requestBodyParser(requestStr);

		Class clazz = this.getClass();
		Class neededClass = null;

		neededClass = getaClass(clazz, null);

		if (!Validator.isIdCorrect(id)) {
			resp.getWriter().write("Incorrect input type!");

		} else {

			if (Manager.updateRequestedObject(neededClass, id, parsedData)) {
				resp.getWriter().write("Done!");

			} else {
				resp.getWriter().write("No record with number id " + id);
			}
		}

	}

	private Class getaClass(Class clazz, Class neededClass) {
		switch (clazz.getSimpleName()) {
			case "TeamServlet":
				neededClass = Team.class;
				break;
			case "HallServlet":
				neededClass = Hall.class;
				break;
			case "PlayerServlet":
				neededClass = Player.class;
				break;
		}
		return neededClass;
	}
}
