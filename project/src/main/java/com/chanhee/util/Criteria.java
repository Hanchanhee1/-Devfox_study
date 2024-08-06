package com.chanhee.util;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria { // 1ページに掲示板の数を設定 , 検索

	private int pageNum;
	private int amount;

	private String type;
	private String keyword;
	
	public Criteria() {
		this(1, 10);
	}

	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}

	public String[] getTypeArr() {
		return type == null || type.isEmpty() ? new String[] {} : type.split("");
	}

}
