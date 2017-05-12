package com.mentoring.model;

public class Notice {
	private int nNum;	//공지번호
	private String nTitle;	//공지제목
	private String nContent;	//공지내용
	private String nDate;	//작성일
	private int nHits;	//조회수
	
	
	public int getnNum() {
		return nNum;
	}
	public void setnNum(int nNum) {
		this.nNum = nNum;
	}
	public String getnTitle() {
		return nTitle;
	}
	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}
	public String getnContent() {
		return nContent;
	}
	public void setnContent(String nContent) {
		this.nContent = nContent;
	}
	public String getnDate() {
		return nDate;
	}
	public void setnDate(String nDate) {
		this.nDate = nDate;
	}
	public int getnHits() {
		return nHits;
	}
	public void setnHits(int nHits) {
		this.nHits = nHits;
	}
	
	
}
