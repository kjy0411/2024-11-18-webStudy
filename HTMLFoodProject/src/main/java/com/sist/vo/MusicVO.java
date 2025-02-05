package com.sist.vo;

import lombok.Data;

/*
MNO       NOT NULL NUMBER         
CNO                NUMBER         
TITLE     NOT NULL VARCHAR2(1000) 
SINGER    NOT NULL VARCHAR2(500)  
ALBUM     NOT NULL VARCHAR2(500)  
POSTER             VARCHAR2(260)  
IDCREMENT          NUMBER         
STATE              VARCHAR2(30)   
KEY                VARCHAR2(200)  
HIT                NUMBER         
 */
@Data
public class MusicVO {
	private int mno, cno, idcrement, hit, cLank;
	private String title, singer, album, poster, state, key, genre;
	
	public int getLank() {
		
		return cLank;
	}
	public String getGenre() {
		String genre = "";
		switch(cno) {
		case 1:
			genre = "가요";
			break;
		case 2:
			genre = "POP";
			break;
		case 3:
			genre = "OST";
			break;
		case 4:
			genre = "트롯";
			break;
		case 5:
			genre = "JAZZ";
			break;
		case 6:
			genre = "CLASSIC";
			break;
		case 7:
			genre = "EDM";
			break;
		}
		return genre;
	}
}
