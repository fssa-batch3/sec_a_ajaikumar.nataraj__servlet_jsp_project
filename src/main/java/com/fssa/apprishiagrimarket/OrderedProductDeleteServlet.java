package com.fssa.apprishiagrimarket;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.rishi.services.OrderService;
import com.fssa.rishi.services.exceptions.ServiceException;

/**
 * Servlet implementation class OrderedProductDeleteServlet
 */
@WebServlet("/OrderedProductDeleteServlet")
public class OrderedProductDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Retrieve the product ID from the request parameter
		String orderId = request.getParameter("id");
		String status = request.getParameter("status");
		System.out.println();
		System.out.println("OrderedProductDeleteServlet : " + status);
		PrintWriter out = response.getWriter();

		long order_id = Long.parseLong(orderId);
		int statusFilter = Integer.parseInt(status);
		System.out.println("OrderedProductDeleteServlet filterStatus : " + statusFilter);

		try {

			OrderService Service = new OrderService();

			try {
				Service.deleteOrder(order_id);
				RequestDispatcher dispatcher = request
						.getRequestDispatcher("BuyerHistoryServlet?statusFilter=" + statusFilter);
				dispatcher.forward(request, response);

			} catch (ServiceException e) {
				e.printStackTrace();
			}

		} catch (Exception e) {
			e.printStackTrace();
			out.println("Error: " + e.getMessage());
		}
	}
}
