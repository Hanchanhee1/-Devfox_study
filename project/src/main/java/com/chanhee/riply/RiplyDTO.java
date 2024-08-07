package com.chanhee.riply;

public class RiplyDTO {
	
	private String riply_no;
	private String id;
	private String riply_content;
	private String board_no;
	
	public RiplyDTO() {
		
	}
	
	public RiplyDTO(String riply_no, String id, String riply_content, String board_no) {
		super();
		this.riply_no = riply_no;
		this.id = id;
		this.riply_content = riply_content;
		this.board_no = board_no;
	}

	@Override
	public String toString() {
		return "RiplyDTO [riply_no=" + riply_no + ", id=" + id + ", riply_content=" + riply_content + ", board_no="
				+ board_no + "]";
	}

	public String getRiply_no() {
		return riply_no;
	}

	public void setRiply_no(String riply_no) {
		this.riply_no = riply_no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getRiply_content() {
		return riply_content;
	}

	public void setRiply_content(String riply_content) {
		this.riply_content = riply_content;
	}

	public String getBoard_no() {
		return board_no;
	}

	public void setBoard_no(String board_no) {
		this.board_no = board_no;
	}

}
