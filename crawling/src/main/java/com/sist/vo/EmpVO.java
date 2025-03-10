package com.sist.vo;
/*
ENO              NOT NULL NUMBER        
NAME                      VARCHAR2(100) 
TITLE                     VARCHAR2(200) 
PERSONAL_HISTORY          VARCHAR2(100) 
SALARY                    NUMBER(12)    
EDUCATION                 NUMBER
LOC                       VARCHAR2(400) 
EMP_TYPE                  VARCHAR2(200) 
TASK                      VARCHAR2(200) 
REGDATE                   DATE          
HIT                       NUMBER        
DEADLINE                  DATE          
CID              NOT NULL VARCHAR2(10)  
content					  CLOB
 */

import java.text.SimpleDateFormat;
import java.util.Date;

public class EmpVO {
	private int eno, salary,hit,education;
	private String name,title,personal_history,loc,emp_type,cid,dbRegdate, dbDeadline,content,salary_str;
	public String getSalary_str() {
		return salary_str;
	}
	public void setSalary_str(String salary_str) {
		this.salary_str = salary_str;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	private Date regdate,deadline;
	public int getEno() {
		return eno;
	}
	public void setEno(int eno) {
		this.eno = eno;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPersonal_history() {
		return personal_history;
	}
	public void setPersonal_history(String personal_history) {
		this.personal_history = personal_history;
	}
	public int getEducation() {
		return education;
	}
	public void setEducation(int education) {
		this.education = education;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	public String getEmp_type() {
		return emp_type;
	}
	public void setEmp_type(String emp_type) {
		this.emp_type = emp_type;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getDbRegdate() {
		return dbRegdate;
	}
	public void setDbRegdate(String dbRegdate) {
		String inputDate = dbRegdate.trim(); // 변환할 날짜 문자열
        
        // 입력 형식 (한글 포함)
        SimpleDateFormat inputFormat = new SimpleDateFormat("yyyy.MM.dd HH:mm");

        // 출력 형식 (YYYY-MM-DD)
        SimpleDateFormat outputFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String formattedDate="";
        try {
            Date date = inputFormat.parse(inputDate); // 문자열을 Date로 변환
            formattedDate = outputFormat.format(date); // Date를 YYYY-MM-DD로 변환
        } catch (Exception e) {
            e.printStackTrace();
        }
		this.dbRegdate = formattedDate;
	}
	public String getDbDeadline() {
		return dbDeadline;
	}
	public void setDbDeadline(String dbDeadline) {
		String inputDate = dbDeadline.trim(); // 변환할 날짜 문자열
        
        // 입력 형식 (한글 포함)
        SimpleDateFormat inputFormat = new SimpleDateFormat("yyyy.MM.dd HH:mm");

        // 출력 형식 (YYYY-MM-DD)
        SimpleDateFormat outputFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String formattedDate="";
        try {
            Date date = inputFormat.parse(inputDate); // 문자열을 Date로 변환
            formattedDate = outputFormat.format(date); // Date를 YYYY-MM-DD로 변환
        } catch (Exception e) {
            e.printStackTrace();
        }
		this.dbDeadline = formattedDate;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public Date getDeadline() {
		return deadline;
	}
	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}
}
