package com.sist.model;

import java.util.ArrayList;
import java.util.*;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.MainDAO;
import com.sist.vo.ComVO;
import com.sist.vo.EmpVO;
import com.sist.vo.JobVO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@Controller
public class empModel {
	public static void main(String[] args) {
		System.setProperty("webdriver.chrome.driver", "C:/webDev/chromedriver.exe");

        // 웹 드라이버 실행
		List<ComVO> list=MainDAO.cidKey();
        for(ComVO vo:list) {
        	String key=vo.getAccess_key();
        	String cid=vo.getCid();
        	WebDriver driver = new ChromeDriver();
        	
        	driver.get("https://www.saramin.co.kr/zf_user/company-info/view-inner-recruit?csn="+"Qm45c1kvejJ2R2poN1NMTDgxK1RsUT09");
        	//해당 기업의 공고번호 추출
        	Set<String> nums=new HashSet<>();
        	try {
        		WebElement count = driver.findElement(By.cssSelector("span.count strong.num"));
        		int c=Integer.parseInt(count.getText().trim());
        		int totalpage=(c/5)+(c%5==0?0:1);
        		
        		for(int i=1; i<=totalpage;i++) {
        			if(i%10!=1) {
        				WebElement btn = driver.findElement(By.cssSelector(".recruit_ing button.BtnType[data-page='"+i+"']"));
        				btn.click();
        				Thread.sleep(1000);
        			}
        			List<WebElement> num = driver.findElements(By.cssSelector(".recruit_ing .str_tit "));
        			for(WebElement w:num) {
        				String n=w.getAttribute("id").substring(9);
        				nums.add(n);
        			}
        			if(i%10==0&&i<totalpage) {
        				WebElement btn = driver.findElement(By.cssSelector(".recruit_ing button.BtnType[data-page='"+(i+1)+"']"));
        				btn.click();
        				Thread.sleep(1000);
        			}
        		}
        		
			} catch (Exception e) {
				e.printStackTrace();
			}
        	driver.quit();
        	for(String num:nums) {
        		System.out.println(num);
        	}
        	//공고 데이터 추출
        	int eno=0;//공고번호
        	int salary=0;//급여
        	String salary_str="";//급여
        	String sal="";
        	int hit=0;//조회수
        	String name="";//기업명
        	String title="";//공고이름
        	String personal_history="";//경력
        	int education=0;//학력
        	String etest="";
        	String loc="";//지역
        	String emp_type="";//근무형태
        	String task="";//업무
        	String dbRegdate="";//생성일
        	String dbDeadline="";//마감일
        	String content="";
        	for(String num:nums) {
        		EmpVO evo=new EmpVO();
        		driver = new ChromeDriver();
        		driver.get("https://www.saramin.co.kr/zf_user/jobs/relay/view-detail?rec_idx="+num);
        		WebElement con = driver.findElement(By.cssSelector("body"));
        		content=con.getAttribute("innerHTML");
        		evo.setContent(content);
        		driver.quit();
        		
        		driver = new ChromeDriver();
        		driver.get("https://www.saramin.co.kr/zf_user/jobs/relay/view?isMypage=no&rec_idx="+num);
        		WebElement tit = driver.findElement(By.cssSelector(".wrap_jv_cont .tit_job"));
        		WebElement na = driver.findElement(By.cssSelector(".wrap_jv_cont .company"));
        		
        		//주요
        		eno=Integer.parseInt(num);
        		salary=0;
        		hit=0;
        		name=na.getText().trim();
        		title=tit.getText().trim();

        		
        		//상세
        		List<WebElement> details1 = driver.findElements(By.cssSelector(".jview-0-"+num+" .wrap_jv_cont .cont dt"));
        		List<WebElement> details2 = driver.findElements(By.cssSelector(".jview-0-"+num+" .wrap_jv_cont .cont dd"));
        		
        		for(int i=0; i<details1.size();i++) {
        			try {
        				String t=details1.get(i).getText().trim();
        				String r=details2.get(i).getText().trim();
        				if(t.equals("경력")) {
        					personal_history=r;
        				}else if(t.equals("학력")) {
        					String[] e=r.split(" ");
        					if(e[0].indexOf("(")!=-1&&e[0].indexOf(")")==-1) {
        						e[0]=e[0].substring(0,e[0].indexOf("("));
        					}
        					String estr=e[0];
        					etest=estr;
        					if(estr.equals("학력무관")) {
        						education=0;
        					}else if(estr.equals("고교졸업")) {
        						education=1;
        					}else if(estr.equals("대졸(2,3년제)")) {
        						education=2;
        					}else if(estr.equals("대졸(4년제)")) {
        						education=3;
        					}else if(estr.equals("석사졸업")) {
        						education=4;
        					}else if(estr.equals("박사졸업")) {
        						education=5;
        					}else {
        						education=-1;
        					}
        				}else if(t.equals("근무형태")) {
        					emp_type=r;
        				}else if(t.equals("근무일시")) {
        					emp_type+="|"+r;
        				}else if(t.equals("급여")) {
        					if(r.lastIndexOf("상")==-1) {
        						salary_str=r.trim();
        					}else {
        						salary_str=r.substring(0,r.lastIndexOf("상")).trim();
        					}
        					
        					if(r.equals("면접 후 결정")||r.equals("회사내규에 따름")) {
        						salary=0;
        					}else if(r.subSequence(0, 2).equals("연봉")){
        						sal=r.substring(0,r.indexOf("원")).replaceAll("[^0-9]", "");
        						salary=Integer.parseInt(sal);
        					}else if(r.subSequence(0, 2).equals("월급")){
        						sal=r.substring(0,r.indexOf("원")).replaceAll("[^0-9]", "");
        						salary=Integer.parseInt(sal)*12;
        					}else if(r.subSequence(0, 2).equals("일급")){
        						salary=0;
        					}else if(r.subSequence(0, 2).equals("시급")){
        						salary=0;
        					}
        				}else if(t.equals("근무지역")) {
        					if(r.lastIndexOf("지")==-1) {
        						loc=r.trim();
        					}else {
        						loc=r.substring(0,r.lastIndexOf("지")).trim();
        					}
        				}else if(t.equals("시작일")) {
        					dbRegdate=r;
        				}else if(t.equals("마감일")) {
        					dbDeadline=r;
        				}
					} catch (Exception e) {
						e.printStackTrace();
					}
        			
        		}
        		
        		//업무
        		List<String> jList=new ArrayList<String>();
        		try {
        			WebElement b = driver.findElement(By.cssSelector(".jview-0-"+num+" .btn_tags"));
        			b.click();
				} catch (Exception e) {}
        		List<WebElement> tags = driver.findElements(By.cssSelector(".jview-0-"+num+" .tags a"));
        		for(WebElement tag:tags) {
        			String strt=tag.getAttribute("href");
        			strt=strt.substring(strt.indexOf("?")+1);
        			if(strt.substring(0,1).equals("c")) {
        				strt=strt.substring(strt.indexOf("=")+1);
        				jList.add(strt);
        			}
        		}
        		
        		evo.setEno(eno);
        		evo.setName(name);
        		evo.setTitle(title);
        		evo.setPersonal_history(personal_history);
        		evo.setEducation(education);
        		evo.setEmp_type(emp_type);
        		evo.setSalary_str(salary_str);
        		evo.setSalary(salary);
        		evo.setLoc(loc);
        		evo.setDbRegdate(dbRegdate);
        		evo.setDbDeadline(dbDeadline);
        		evo.setCid(cid);
        		//MainDAO.empInsert(evo);
        		System.out.println(
        				"공고번호 : "+evo.getEno()+"\n"
						+"기업명 : "+evo.getName()+"\n"
						+"공고제목 : "+evo.getTitle()+"\n"
						+"경력 : "+evo.getPersonal_history()+"\n"
						+"학력 : "+evo.getEducation()+" "+etest+"\n"
						+"근무형태 : "+evo.getEmp_type()+"\n"
						+"급여 : "+evo.getSalary_str()+"\n"
						+"연봉 : "+evo.getSalary()+"만원\n"
						+"근무지역 : "+evo.getLoc()+"\n"
						+"시작일 : "+evo.getDbRegdate()+"\n"
						+"마감일 : "+evo.getDbDeadline()+"\n"
        				);
        		
        		JobVO jvo=new JobVO();
        		jvo.setEno(eno);
        		for(String j:jList) {
        			System.out.println(j+" ");
        			jvo.setJno(Integer.parseInt(j));
        			//MainDAO.jobInsert(jvo);
        		}
        		
        		driver.quit();
        	}
        	
        }
	}
}
