package com.dvdrental.servlet;

import java.io.IOException;
import java.net.URL;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dvdrental.util.Util;

/**
 * Servlet implementation class SaveMovieServlet
 */
public class SaveMovieServlet extends HttpServlet {
	
	
	private static final long serialVersionUID = 1L;
	private String name;
	private String tmdbid;
	private String imdbid;
	private boolean isAvailable;
	private boolean isAdult;
	private boolean isBuy;
	private Date dataAdded;
	private Date dateAvailable;
	private String description;
	private String imageURL;
	private String[] language;
	private String leadActor;
	private String leadActress;
	private String[] director;
	private String[] producer;
	private String[] musicDirector;
	private double rating;
	private double runtime;
	private String[] sound;
	private String trailer;
	private String[] cast;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveMovieServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.name = Util.NotNull(request.getParameter("name"));
		this.tmdbid = Util.NotNull(request.getParameter("tmdbid"));
		this.imdbid = Util.NotNull(request.getParameter("imdbid"));
		this.isAvailable = Util.NotNull(request.getParameter("available").trim())=="No"?false:true;
		this.description = Util.NotNull(request.getParameter("description"));
		this.imageURL = Util.NotNull(request.getParameter("imageurl"));
		
		if(Util.NotNull(request.getParameter("dateadded"))=="")
			this.dataAdded = null;
		else{
			SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
			try {
				this.dataAdded = df.parse(request.getParameter("dateadded"));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		this.isBuy=Util.NotNull(request.getParameter("buy").trim())=="No"?false:true;
		if(Util.NotNull(request.getParameter("availabledate"))=="")
			this.dateAvailable = null;
		else{
			SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
			try {
				this.dateAvailable = df.parse(request.getParameter("availabledate"));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

}
