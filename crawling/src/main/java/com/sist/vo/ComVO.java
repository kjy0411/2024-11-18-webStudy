package com.sist.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ComVO {
	private String cid, name, introduction, c_type, industry, representative, homepage, bu_details, address, history, access_key, poster, sample, dbdate, take;
	private int ecount, jo, uk, man;
	private Date estdate;
	
	public String getDbdate() {
		return dbdate;
	}
	public String getTake() {
		return take;
	}
	public void setTake(String take) {
		this.take = take;
	}
	public int getJo() {
		return jo;
	}
	public void setJo(int jo) {
		this.jo = jo;
	}
	public int getUk() {
		return uk;
	}
	public void setUk(int uk) {
		this.uk = uk;
	}
	public int getMan() {
		return man;
	}
	public void setMan(int man) {
		this.man = man;
	}
	public void setDbdate(String dbdate) {
		String inputDate = dbdate.trim(); // 변환할 날짜 문자열
        
        // 입력 형식 (한글 포함)
        SimpleDateFormat inputFormat = new SimpleDateFormat("yyyy년 M월 d일");

        // 출력 형식 (YYYY-MM-DD)
        SimpleDateFormat outputFormat = new SimpleDateFormat("yyyy-MM-dd");
        String formattedDate="";
        try {
            Date date = inputFormat.parse(inputDate); // 문자열을 Date로 변환
            formattedDate = outputFormat.format(date); // Date를 YYYY-MM-DD로 변환
            System.out.println(formattedDate);
        } catch (Exception e) {
            e.printStackTrace();
        }
		this.dbdate = formattedDate;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public String getC_type() {
		return c_type;
	}
	public void setC_type(String c_type) {
		this.c_type = c_type;
	}
	public String getIndustry() {
		return industry;
	}
	public void setIndustry(String industry) {
		this.industry = industry;
	}
	public String getRepresentative() {
		return representative;
	}
	public void setRepresentative(String representative) {
		this.representative = representative;
	}
	public String getHomepage() {
		return homepage;
	}
	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}
	public String getBu_details() {
		return bu_details;
	}
	public void setBu_details(String bu_details) {
		this.bu_details = bu_details;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getHistory() {
		return history;
	}
	public void setHistory(String history) {
		this.history = history;
	}
	public String getAccess_key() {
		return access_key;
	}
	public void setAccess_key(String access_key) {
		this.access_key = access_key;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public String getSample() {
		return sample;
	}
	public void setSample(String sample) {
		this.sample = sample;
	}
	public int getEcount() {
		return ecount;
	}
	public void setEcount(int ecount) {
		this.ecount = ecount;
	}
	public Date getEstdate() {
		return estdate;
	}
	public void setEstdate(Date estdate) {
		this.estdate = estdate;
	}
}
