package com.sist.main;

import com.sist.ann.*;

import java.lang.reflect.Method;
import java.util.*;

public class MainClass2 {

	public static void main(String[] args) {
		List<String> list = new ArrayList<String>();
		list.add("com.sist.model.BoardModel");
		list.add("com.sist.model.FoodModel");
		list.add("com.sist.model.GoodsModel");
		//////////// XML 등록
		Scanner scan = new Scanner(System.in);
		System.out.print("URL 입력 : ");
		String url = scan.next();
		////////////// getRequestURI()
		try {
			for (String cls : list) {
				
				Class clsName = Class.forName(cls);
				Object obj = clsName.getDeclaredConstructor().newInstance();

				// BoardModel에 설정한 모든 메소드를 읽어 온다
				Method[] methods = clsName.getDeclaredMethods();
				for (Method m : methods) {
					// System.out.println(m.getName());

					// 메소드 위에있는 어노테이션 읽기
					RequestMapping rm = m.getAnnotation(RequestMapping.class);
					if (rm.value().equals(url)) {
						// 메소드를 호출
						m.invoke(obj, null);
					}
				}
			}
		} catch (Exception e) {
		}
	}

}
