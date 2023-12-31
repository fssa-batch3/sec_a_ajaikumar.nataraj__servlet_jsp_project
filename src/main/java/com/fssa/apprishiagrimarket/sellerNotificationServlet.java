package com.fssa.apprishiagrimarket;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.rishi.model.Order;
import com.fssa.rishi.services.OrderService;
import com.fssa.rishi.services.exceptions.ServiceException;

/**
 * Servlet implementation class sellerNotificationServlet
 */
@WebServlet("/sellerNotificationServlet")
public class sellerNotificationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		PrintWriter out = response.getWriter();
		long id = Long.parseLong(request.getParameter("userId"));
		System.out.println("notification user id " + id);
		List<Order> pendingOrder = null;
		List<Order> acceptedOrder = null;
		List<Order> rejectedOrder = null;
		OrderService service = new OrderService();

		if (session != null) {
			String loggedInEmail = (String) session.getAttribute("loggedInEmail");

			if (loggedInEmail == null) {
				response.sendRedirect(request.getContextPath() + "/pages/2.Login.jsp");
			} else {
				try {

					pendingOrder = service.getOrdersByUserIdForPendingOrderNotification(id);
					acceptedOrder = service.getOrdersByUserIdForAcceptedOrderNotification(id);
					rejectedOrder = service.getOrdersByUserIdForRejectedOrderNotification(id);
					System.out.println(pendingOrder);
					request.setAttribute("pendingProducts", pendingOrder);
					request.setAttribute("acceptedProducts", acceptedOrder);
					request.setAttribute("rejectedProducts", rejectedOrder);
					request.setAttribute("userId", id);
					RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/SellerNotification.jsp");
					dispatcher.forward(request, response);
				} catch (ServiceException e) {
					String errormsg = ("Error in getting the products: " + e.getMessage());
					out.print(errormsg);
					e.printStackTrace();
				}
			}
		}
		
	}

}
