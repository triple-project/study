package com.triple.finalp.mag.vo;

import java.util.Date;

import lombok.Data;

@Data
public class MagVo {
	private int mgz_id;
	private String mgz_content;
	private Date mgz_date;
	private String mgz_title;
	private String mgz_smalltitle;
	private String mgz_category;
	private String mgz_city;
}
