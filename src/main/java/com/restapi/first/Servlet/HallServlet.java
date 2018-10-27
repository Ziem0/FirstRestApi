package com.restapi.first.Servlet;

import com.restapi.first.helper.Manager;
import com.restapi.first.helper.Parser;
import com.restapi.first.helper.Validator;
import com.restapi.first.model.Hall;
import org.apache.commons.io.IOUtils;

import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

@WebServlet(urlPatterns = "/hall")
public class HallServlet extends MotherServlet {
}
