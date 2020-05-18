package com.dvdrental.util;

import java.text.DateFormatSymbols;
import java.util.Calendar;


public class Util {
	public static String getMonthName(int monthIndex){
		String[] monthName = new DateFormatSymbols().getMonths();
		return monthName[monthIndex];
	}
	public static void main(String[] args) {
	System.out.println(Calendar.getInstance().get(Calendar.YEAR));
	}
}
