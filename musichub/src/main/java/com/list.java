package com;
import java.util.ArrayList;
import java.util.List;

public class list {
	 
	public List<productmodel> MyList=new ArrayList<productmodel>();

	


	public List<productmodel> getMyList() {
		return MyList;
	}




	public void setMyList(List<productmodel> myList) {
		MyList = myList;
	}




	public list()
	{
		MyList.add(new productmodel("3","Flute","pompom","5000","13","resources/image/products/1.jpg"));
		MyList.add(new productmodel("3","Drum","pompom","5000","13","resources/image/products/1.png"));
		MyList.add(new productmodel("3","pompom","pompom","5000","13","resources/image/products/6.jpg"));
		MyList.add(new productmodel("3","Guiter","pompom","5000","13","resources/image/products/5.jpg"));
	}
	public String toString()
	{
		return MyList.toString();
	}

}
