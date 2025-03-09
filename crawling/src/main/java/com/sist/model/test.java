package com.sist.model;

import java.time.Duration;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import java.util.*;
public class test {

	public static void main(String[] args) {
		String url = "https://www.saramin.co.kr/zf_user/company-info/view?csn=b0F3NUZUL0xmM0o4NzVZMUdHakVqUT09";
		try {
			Document doc = Jsoup.connect(url).get();
			Element clogo = doc.selectFirst("div.box_logo img");
			String logo=clogo.attr("src").substring(33);
			System.out.println(logo);
		} catch (Exception e) {}
		
	}
	
}