package com.dvdrental.servlet;

import java.awt.Image;
import java.io.IOException;
import java.net.URL;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dvdrental.movie.MovieInfo;

public class SaveImageServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Image image = null;
		String url = req.getParameter("url");
		if(url!=null && !"".equalsIgnoreCase(url)){
		URL imageurl = new URL(url);
		image = ImageIO.read(imageurl);
		}
		super.doPost(req, resp);
	}
}
