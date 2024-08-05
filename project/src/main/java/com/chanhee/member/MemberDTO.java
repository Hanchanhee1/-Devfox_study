package com.chanhee.member;

// 会員DTO

public class MemberDTO {
	
	private String id;
	private String pw;
	private String name;
	private String gender;
	private String tel;
	private String birth;
	
	public MemberDTO() {
		
	}
	
	public MemberDTO(String id, String pw, String name, String gender, String tel, String birth) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.gender = gender;
		this.tel = tel;
		this.birth = birth;
	}

	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", pw=" + pw + ", name=" + name + ", gender=" + gender + ", tel=" + tel
				+ ", birth=" + birth + "]";
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}

}
