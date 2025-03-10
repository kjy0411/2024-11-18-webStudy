package com.sist.model;

import java.io.*;
import java.time.Duration;
import java.util.*;
import java.util.regex.*;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.MainDAO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.sist.vo.*;
@Controller
public class MainModel {
		
	@RequestMapping("crawling/crawl.do")
    public void crawl(HttpServletRequest request, HttpServletResponse response) {
		OfficialVO ovo=new OfficialVO();
		ComVO cvo=new ComVO();
        String key=request.getParameter("key");
        String ni=request.getParameter("i");
        String url = "https://www.saramin.co.kr/zf_user/company-info/view?csn="+key;
		
        System.setProperty("webdriver.chrome.driver", "C:/webDev/chromedriver.exe");
		WebDriver driver = new ChromeDriver();
		driver.get(url);
		//기업소개
		String iScript="";
		try {
			List<WebElement> btns = driver.findElements(By.cssSelector(".box_btn button"));
			for(int i=0; i<btns.size(); i++) {
				try {
					btns.get(i).click();
				} catch (Exception e) {
				}
			}
		} catch (Exception e) {}
		
    	try {
    		List<WebElement> elements = driver.findElements(By.cssSelector(".company_introduce"));
    		
    		for (WebElement e : elements) {
    			iScript+=e.getText();
    		}
		} catch (Exception e) {
			// TODO: handle exception
		}
    	//연혁
    	String strHistory="";
    	try {
    		List<WebElement> years = driver.findElements(By.cssSelector("li.company_history_item"));
			for(int i=0; i<years.size(); i++) {
				String year=years.get(i).findElement(By.cssSelector("strong.history_year")).getText();
				if(i!=0) {
					strHistory+=";";
				}
				strHistory+=year+"|";
				List<WebElement> months=years.get(i).findElements(By.cssSelector(".history_cont_item"));
				for(int j=0; j<months.size(); j++) {
					String month=months.get(j).findElement(By.cssSelector(".history_month")).getText();
					String text=months.get(j).findElement(By.cssSelector(".history_txt")).getText();
					if(j!=0) {
						strHistory+="|";
					}
					strHistory+=month+" ";
					strHistory+=text;
				}
			}
		} catch (Exception e) {}
    	
    	//복지
    	List<WelfareVO> wList=new ArrayList<WelfareVO>();
    	List<String> wlist=new ArrayList<String>();
    	try {
			List<WebElement> welfares = driver.findElements(By.cssSelector(".list_welfare .welfare_item"));
			for(int i=0; i<welfares.size(); i++) {
				String tit = welfares.get(i).findElement(By.cssSelector(".welfare_tit")).getText();
				int wno2=0;
				if(tit.equals("지원금/보험")) {
					wno2=1;
				}else if(tit.equals("급여제도")) {
					wno2=2;
				}else if(tit.equals("선물")) {
					wno2=3;
				}else if(tit.equals("교육/생활")) {
					wno2=4;
				}else if(tit.equals("근무 환경")) {
					wno2=5;
				}else if(tit.equals("조직문화")) {
					wno2=6;
				}else if(tit.equals("출퇴근")) {
					wno2=7;
				}else if(tit.equals("리프레시")) {
					wno2=8;
				}
				List<WebElement> wels=welfares.get(i).findElements(By.cssSelector(".cate_item"));
				for(WebElement w:wels) {
					String wel=w.getText();
					wlist.add(wel);
				}
			}
		} catch (Exception e) {}
        // 브라우저 종료
        driver.quit();
		
        String cid="";
		String pw="1234";
		String email="";
		String cname="";
		String name="기업";
		String phone="010-1111-1234";
		String bizcard="";
		String brnumber="111-11-11111";
		String state="0";
		
		String introduction="";
		String dbdate="";
		String c_type="";
		int ecount=0;
		String take="";
		String history="";
		String logo="";
		String smaple="";
		
		String industry="";
		String representative="";
		String homepage="";
		String bu_details="";
		String address="";
		
		String date="";
		String type="";
		String co="0";
		String pa="";
		long p=0L;
		String jo="0";
		String uk="0";
		String man="0";
        
		try {
			Document doc = Jsoup.connect(url).get();
			
			Element title = doc.selectFirst("h1.tit_company");
			Elements detail1 = doc.select("strong.company_summary_tit");
			Elements detail2 = doc.select("p.company_summary_desc");
			Elements detail3 = doc.select("dt.tit");
			Elements detail4 = doc.select("dd.desc");
			Element clogo = doc.selectFirst("div.box_logo img");
			
			for(int i=0; i<detail1.size(); i++) {
				try {
					if(detail1.get(i).text().substring(0,2).equals("업력")) {
						String str=detail2.get(i).text();
						date=str.substring(0,str.indexOf("일")+1);
						//SELECT TO_CHAR(TO_DATE('2022년 6월 13일', 'YYYY"년" MM"월" DD"일"'), 'YYYY-MM-DD') AS formatted_date FROM DUAL;
					}else if(detail2.get(i).text().trim().equals("기업형태")) {
						type=detail1.get(i).text().trim();
					}else if(detail2.get(i).text().trim().equals("사원수")) {
						co=detail1.get(i).text().trim().replaceAll("[^0-9]","");
					}else if(detail2.get(i).text().trim().equals("매출액")) { 
						pa=detail1.get(i).text().trim();
						int start=0;
						
						if(pa.indexOf("조")!=-1) {
							jo=pa.substring(start,pa.indexOf("조")+1).replaceAll("[^0-9]","");
							start=pa.indexOf("조")+1;
						}
						if(pa.indexOf("억")!=-1) {
							uk=pa.substring(start,pa.indexOf("억")+1).replaceAll("[^0-9]","");
							start=pa.indexOf("억")+1;
						}
						if(pa.indexOf("만")!=-1) {
							man=pa.substring(start,pa.indexOf("만")+1).replaceAll("[^0-9]","");
						}
					}
				} catch (Exception e) {
				}
			}

			for(int i=0; i<detail3.size(); i++) {
				String str1=detail3.get(i).text();
				String str2=detail4.get(i).text();
				if(str1.equals("업종")) {
					industry=str2;
				}else if(str1.equals("대표자명")) {
					representative=str2;
				}else if(str1.equals("홈페이지")) {
					homepage=str2;
				}else if(str1.equals("사업내용")) {
					bu_details=str2;
				}else if(str1.equals("주소")) {
					address=str2.substring(0,str2.lastIndexOf("지"));
				}
			}
			cid="id";
			pw="1234";
			email="e";
			cname=title.text().substring(0,title.text().length()-4);
			name="기업";
			phone="010-1111-1234";
			bizcard="";
			brnumber="";
			state="0";
			
			introduction=iScript;
			dbdate=date;
			c_type=type;
			ecount=Integer.parseInt(co);
			take=pa;
			history=strHistory;
			logo=clogo.attr("src").substring(33);
			smaple="";
		}catch (Exception e) {
		}
        try {
	        if(!cname.equals("")) {
	        	int c=MainDAO.officialCount();
	        	
	        	String b=String.format("%010d", c);
	        	brnumber=b.substring(0,3)+"-"+b.substring(3,5)+"-"+b.substring(5);
	        	cid="c"+c;
	        	email="c"+c+"@email.com";
	        	name="기업"+c;
	        	String ph=String.format("%011d", c);
	        	phone="010-"+ph.substring(3,7)+"-"+ph.substring(7);
	        	
	        	ovo.setAccess_key(key);
	        	ovo.setBrnumber(brnumber);//사업자번호
	        	ovo.setCid(cid);
	        	ovo.setCname(cname);
	        	ovo.setEmail(email);
	        	ovo.setName(name);
	        	ovo.setPhone(phone);
	        	ovo.setPw(pw);
	        	ovo.setState(1);
	        	System.out.println(
	        			"키 : "+ovo.getAccess_key()+"\n"
	        					+"아이디 : "+ovo.getCid()+"\n"
	        					+"비밀번호 : "+ovo.getPw()+"\n"
	        					+"이름 : "+ovo.getName()+"\n"
	        					+"기업이름 : "+ovo.getCname()+"\n"
	        					+"이메일 : "+ovo.getEmail()+"\n"
	        					+"전화번호 : "+ovo.getPhone()+"\n"
	        					+"사업자번호 : "+ovo.getBrnumber()+"\n"
	        			);
	        	
	        	cvo.setCid(cid);
	        	cvo.setName(cname);
	        	cvo.setIntroduction(introduction);
	        	cvo.setDbdate(dbdate);
	        	cvo.setC_type(c_type);
	        	cvo.setEcount(ecount);
	        	cvo.setTake(take);
	        	cvo.setJo(Integer.parseInt(jo));
	        	cvo.setUk(Integer.parseInt(uk));
	        	cvo.setMan(Integer.parseInt(man));
	        	cvo.setIndustry(industry);
	        	cvo.setRepresentative(representative);
	        	cvo.setHomepage(homepage);
	        	cvo.setBu_details(bu_details);
	        	cvo.setAddress(address);
	        	cvo.setHistory(history);
	        	cvo.setAccess_key(key);
	        	cvo.setPoster(logo);
	        	System.out.println("접근키 : "+ni+" : "+cvo.getAccess_key()+"\n"
	    				+"설립일: "+cvo.getDbdate()+"\n"
	    				+"기업명 : "+cvo.getName()+"\n"
	    				+"기업형태 : "+cvo.getC_type()+"\n"
	    				+"사원수 : "+cvo.getEcount()+"\n"
	    				+"매출 : "+cvo.getTake()+"("+cvo.getJo()+"조"+cvo.getUk()+"억"+cvo.getMan()+"만"+")"+"\n"
	    				+"업종 : "+cvo.getIndustry()+"\n"
	    				+"대표자명 : "+cvo.getRepresentative()+"\n"
	    				+"홈페이지 : "+cvo.getHomepage()+"\n"
	    				+"사업내용 : "+cvo.getBu_details()+"\n"
	    				+"주소 : "+cvo.getAddress()+"\n"
	    				+"로고 : "+cvo.getPoster()+"\n" //https://pds.saramin.co.kr/company
	    				+"연혁 : "+cvo.getHistory()+"\n"
	    				+"기업소개 : "+cvo.getIntroduction()+"\n"
	    				);
	        	MainDAO.officialInsert(ovo);
	        	MainDAO.comInsert(cvo);
	        	for(String wel:wlist) {
	        		
					int wno=MainDAO.welfareFind(wel);
					WelfareVO vo=new WelfareVO();
					vo.setWno(wno);
					vo.setId(cid);
					MainDAO.comWelfareInsert(vo);
				}
	        }
        } catch (Exception e) {
        	e.printStackTrace();
		}
        return;
    }
}
