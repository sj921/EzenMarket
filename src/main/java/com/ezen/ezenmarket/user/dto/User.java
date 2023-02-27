package com.ezen.ezenmarket.user.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// 데이터 저장 담당 클래스.
// Controller, Service, View 등 계층간 데이터 교환을 위해 사용되는 객체.
// 로직을 갖지 않는 순수한 데이터 객체이며 getter, setter 메소드만을 포함한다. 
@NoArgsConstructor
@AllArgsConstructor
@Data
public class User {
	private Integer user_Number;
	private String user_Name;
	private String user_ID;
	private String user_PW;
	private String nickname;
	private String phoneNumber;
	private String email;
	private String user_image;
	private Date bannedDate;
}
