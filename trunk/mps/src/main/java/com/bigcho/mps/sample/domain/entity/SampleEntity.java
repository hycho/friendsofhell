package com.bigcho.mps.sample.domain.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.Data;


@Data
@Entity
public class SampleEntity {
	@Id				// primary key
	@GeneratedValue	// auto increment
	private Long sampleNo;
	private String title;
	private String content;

	/* 컬럼명은 필드명이랑 동일하게 된다. 따로 명시해주고 싶으면 @Column을 사용하자 */
	/**
	 * 하이버네이트가 파라미터 없는 생성자를 호출하기 때문에, 파라미터 있는 생성자를 생성했을 경우 꼭 파라미터 없는 생성자를 만들어 줘야
	 * 한다.
	 */
	public SampleEntity() {
	}

	public SampleEntity(String title, String content) {
		this.title = title;
		this.content = content;
	}

	@Override
	public String toString() {
		return "Article [articleNo=" + sampleNo + ", title=" + title + ", content=" + content + "]";
	}

}
