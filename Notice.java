package com.notice;

import java.util.Date;

public class Notice {
	
	private int noticeID;
	private int teacherID;
	private Date noticeAddedDate;
	private int noticeGrade;
	private String noticeSubject;
	private String noticeText;
	
	public Notice(int noticeID, int teacherID, int noticeGrade, String noticeSubject, String noticeText, Date noticeAddedDate) {
		
		this.noticeID = noticeID;
		this.teacherID = teacherID;
		this.noticeAddedDate = noticeAddedDate;
		this.noticeGrade = noticeGrade;
		this.noticeSubject = noticeSubject;
		this.noticeText = noticeText;
	}

	public int getNoticeID() {
		return noticeID;
	}

	public int getTeacherID() {
		return teacherID;
	}

	public Date getNoticeAddedDate() {
		return noticeAddedDate;
	}

	public int getNoticeGrade() {
		return noticeGrade;
	}

	public String getNoticeSubject() {
		return noticeSubject;
	}

	public String getNoticeText() {
		return noticeText;
	}

	public void setNoticeID(int noticeID) {
		this.noticeID = noticeID;
	}

	public void setTeacherID(int teacherID) {
		this.teacherID = teacherID;
	}

	public void setNoticeAddedDate(Date noticeAddedDate) {
		this.noticeAddedDate = noticeAddedDate;
	}

	public void setNoticeGrade(int noticeGrade) {
		this.noticeGrade = noticeGrade;
	}

	public void setNoticeSubject(String noticeSubject) {
		this.noticeSubject = noticeSubject;
	}

	public void setNoticeText(String noticeText) {
		this.noticeText = noticeText;
	}
		

}
