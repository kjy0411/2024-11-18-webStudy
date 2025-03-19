package com.sist.model;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import java.util.*;
public class selfModel {

	public static void main(String[] args) {
		System.setProperty("webdriver.chrome.driver", "C:/webDev/chromedriver.exe");
		List<String> list=new ArrayList<String>();
		for(int i=1; i<=10;i++) {
			WebDriver driver = new ChromeDriver();
			
			driver.get("https://people.incruit.com/resumeguide/rsmpdslist.asp?pds1=1&pds2=11&page="+i);
			
			List<WebElement> li = driver.findElements(By.cssSelector(".bbslist_resumeform ul li"));
			for(int j=0; j<li.size();j++) {
				WebElement title= driver.findElement(By.cssSelector(".bbslist_resumeform ul li:eq["+j+"] span.text a.mid"));
				System.out.println(title.getText());
				
			}
			driver.quit();
		}
	}

}
