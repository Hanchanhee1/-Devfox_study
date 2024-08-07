package com.chanhee.board;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

// 掲示板DTO

public class BoardDTO {
	
	String board_no;
	String id;
	String title;
	String content;
	
	int riplycount;

	public BoardDTO() {
		
	}
	public BoardDTO(String board_no, String id, String title, String content, int riplycount) {
		super();
		this.board_no = board_no;
		this.id = id;
		this.title = title;
		this.content = content;
		this.riplycount = riplycount;
	}
	
	public BoardDTO(String board_no, String id, String title, String content,
			List<MultipartFile> files, int riplycount) {
		super();
		this.board_no = board_no;
		this.id = id;
		this.title = title;
		this.content = content;
		this.riplycount = riplycount;
	}
	
	@Override
	public String toString() {
		return "BoardDTO [board_no=" + board_no + ", id=" + id + "," + ", title=" + title
				+ ", content=" + content + "," ;
	}
	
		public String getBoard_no() {
		return board_no;
	}
	public void setBoard_no(String board_no) {
		this.board_no = board_no;
	}
	public String getId() {
		System.out.println("getId()");
		return id;
	}
	public void setId(String id) {
		System.out.println("setId()");
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getRiplycount() {
		return riplycount;
	}
	public void setRiplycount(int riplycount) {
		this.riplycount = riplycount;
	}
	
}
