package com.sist.dao;
class A{
	String name="홍길동";
}
public class MainClass {
	public static void main(String[] args) {
		A a=new A(); // a.jsp
		a.name="심청이";
		System.out.println(a.name);
		
		a=new A(); // a.jsp
		System.out.println(a.name);
		
	}
	
}
