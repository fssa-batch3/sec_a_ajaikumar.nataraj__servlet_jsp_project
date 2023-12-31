package com.fssa.apprishiagrimarket;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.rishi.model.User;
import com.fssa.rishi.services.UserService;
import com.fssa.rishi.services.exceptions.ServiceException;

/**
 * Servlet implementation class LoginBuyerServlet
 */
@WebServlet("/LoginBuyerServlet")
public class LoginBuyerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		User user = new User(email, password);

		PrintWriter out = response.getWriter();

		UserService userService = new UserService();
		try {
			if (userService.logInUser(user)) {
				out.println("Login Successfull...");
				HttpSession session = request.getSession();
				session.setAttribute("loggedInEmail", email);
				response.sendRedirect("GetAllProductServlet");
			}

			else {
				out.println("Invalid Login Credentials");
				RequestDispatcher dispatcher = request
						.getRequestDispatcher(request.getContextPath() + "/pages/2.buy-login.jsp");
				dispatcher.forward(request, response);
			}
		} catch (ServiceException e) {
			out.println(e.getMessage());
			e.printStackTrace();
			request.setAttribute("ErrorMessage", e.getMessage());
			RequestDispatcher dispatcher = request
					.getRequestDispatcher(request.getContextPath() + "/pages/2.buy-login.jsp");
			dispatcher.forward(request, response);
		}

	}

}
