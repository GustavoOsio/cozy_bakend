package com.springApirestCozy.Props;

import java.text.SimpleDateFormat;

import com.google.cloud.Date;

public class FormateDate {
	
	public String dateForman(Date currentDate ) {
	 
      SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
      String formattedDate = dateFormat.format(currentDate);
      return formattedDate;

	}
}
