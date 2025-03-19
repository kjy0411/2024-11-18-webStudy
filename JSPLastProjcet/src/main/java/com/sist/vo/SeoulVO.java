package com.sist.vo;

import lombok.Data;

/*
	NO         NOT NULL NUMBER         
	TITLE      NOT NULL VARCHAR2(200)  
	POSTER     NOT NULL VARCHAR2(300)  
	MSG        NOT NULL VARCHAR2(4000) 
	ADDRESS    NOT NULL VARCHAR2(300)  
	HIT                 NUMBER         
	LIKECOUNT           NUMBER         
	REPLYCOUNT          NUMBER   
 */
@Data
public class SeoulVO {
	private int no, hit, likecount, replycount;
	private String title, poster, msg, address;
}
